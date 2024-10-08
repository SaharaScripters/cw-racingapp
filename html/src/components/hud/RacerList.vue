<template>
  <div class="racers-holder">
    <div
      class="box"
      v-for="(racer, index) in shortenedRacers"
      :key="racer.RacerSource"
      :class="{
        me: index === globalStore.activeRace.position-1,
      }"
    >
      <div class="number">{{ index + 1 }}</div>
      <span class="name">{{ racer.RacerName }}</span>
      <span class="difference" v-if="index === 0 && racer.Finished" >{{ translate('winner') }}</span>
      <span class="difference" v-else-if="racer.Finished" >{{ translate('finished') }}</span>
      <span class="difference" v-else-if="index !== globalStore.activeRace.position-1" >{{ getTimeDifference(racers[globalStore.activeRace.position - 1], racer) }}</span>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useGlobalStore } from "@/store/global";
import { ActiveRacer } from "../../store/types";
import { computed } from "vue";
import { translate } from "@/helpers/translate";

const props = defineProps<{
  racers: ActiveRacer[];
}>();

const globalStore = useGlobalStore();
const shortenedRacers = computed(() =>
  props.racers?.slice(
    0,
    globalStore.baseData?.data?.hudSettings?.maxPositions || 10
  )
);

const formatTimeDifference = (timeDiffMs: number): string => {
  if (timeDiffMs === 0) {
    return "0.000";
  }

  const isAhead = timeDiffMs > 0;
  const absoluteDiffSeconds = Math.abs(timeDiffMs) / 1000;

  // Format to 3 decimal places
  const formattedTime = absoluteDiffSeconds.toFixed(3);

  return isAhead ? `+${formattedTime}` : `-${formattedTime}`;
};

const getTimeDifference = (racer1: ActiveRacer, racer2: ActiveRacer) => {
  const racer1Checkpoints = racer1.CheckpointTimes.length;
  const racer2Checkpoints = racer2.CheckpointTimes.length;

  if (racer1Checkpoints === 0 || racer2Checkpoints === 0) {
    return ''; // Not enough data to compare
  }

  const lastCommonCheckpoint = Math.min(racer1Checkpoints, racer2Checkpoints) - 1;
  const racer1Time = racer1.CheckpointTimes[lastCommonCheckpoint].time;
  const racer2Time = racer2.CheckpointTimes[lastCommonCheckpoint].time;

  const timeDifference = formatTimeDifference(racer2Time - racer1Time);

  // Positive if racer1 is ahead, negative if racer2 is ahead
  return timeDifference;
};

</script>
<style scoped lang="scss">

@use 'vuetify/settings' as vuetify-settings;

.name {
  text-overflow: ellipsis;
  max-width: 20em;
  max-lines: 1;
  overflow: hidden;
  white-space: nowrap;
  padding: 0.5em;
  margin-right: 1em;
}
.racers-holder {
  display: flex;
  flex-direction: column;
  gap: 0.3em;
}
.number {
  font-size: 1.1em;
  font-weight: bold;
}
.box {
  background: $hud-background;
  width: 100%;
  font-size: 1em;
  font-weight: 600;
  display: flex;
  gap: 1em;
  align-items: center;
  clip-path: polygon(5% 100%,100% 100%,95% 0%,0% 0%,calc(100% - 88px) 0%,0% 0%);
  padding-right: 2em;
  padding-left: 2em;
}
.me {
  background: rgb(var(--v-theme-primary));
}

</style>
