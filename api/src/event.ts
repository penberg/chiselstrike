import { ChiselEntity } from "./datastore.ts";

export type ChiselEvent = {
    key: ArrayBuffer;
    value: ArrayBuffer;
};

class Outbox extends ChiselEntity {
    timestamp: number;
    topic: string;
    key: string;
    value: string;
}

/**
 * Publish an event on a topic.
 *
 * The `publish()` function provides transactional message publishing to a
 * topic. The function guarantees at-least-once semantics where the subscribers
 * are expected to de-duplicate events. For example, you can use the `upsert()`
 * function to de-duplicate when storing events to a data store.
 */
export async function publish(topic: string, _event: ChiselEvent) {
    const key = ""; // TODO: event.key
    const value = ""; // TODO: event.value
    await Outbox.create({ topic, key, value });
}
