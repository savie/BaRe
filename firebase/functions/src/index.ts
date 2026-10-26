import { onValueWritten } from "firebase-functions/v2/database";
import { logger } from "firebase-functions";
import { initializeApp } from "firebase-admin/app";

initializeApp();

const MIRROR_URL =
  "https://fbiazqbrkwovzrirnzpb.supabase.co/functions/v1/firebase-rtdb-mirror";

/**
 * Mirrors the complete users/{uid} JSON object, not individual allow-listed
 * fields. The event's Firebase ID token is forwarded so Supabase can verify
 * the Firebase issuer, audience, signature, expiry, and UID.
 *
 * Note: writes made by Admin SDK/server processes may not carry authIdToken.
 * Those need a trusted server-to-server path; they must not be treated as
 * authenticated user writes.
 */
export const rtdbUserMirror = onValueWritten(
  {
    ref: "/users/{uid}",
    region: "asia-southeast1",
    retry: true,
  },
  async (event) => {
    const uid = event.params.uid;
    const idToken = event.authIdToken;
    if (!idToken) {
      logger.warn("RTDB mirror event has no Firebase ID token; not forwarding unauthenticated event", {
        uid,
        eventId: event.id,
        authType: event.authType,
      });
      throw new Error("Missing Firebase ID token for secure Supabase mirror");
    }

    const after = event.data.after;
    const payload = after.exists() ? after.val() : null;
    const response = await fetch(MIRROR_URL, {
      method: "POST",
      headers: {
        "content-type": "application/json",
        authorization: `Bearer ${idToken}`,
      },
      body: JSON.stringify({
        user_id: uid,
        path_key: "__root__",
        payload,
        source_event_id: event.id,
        source_updated_at: event.time,
      }),
    });

    if (!response.ok) {
      const body = await response.text();
      logger.error("Supabase full-tree mirror enqueue failed", {
        uid,
        eventId: event.id,
        status: response.status,
        body: body.slice(0, 500),
      });
      throw new Error(`Supabase mirror enqueue returned HTTP ${response.status}`);
    }

    logger.info("Supabase full-tree mirror event enqueued", {
      uid,
      eventId: event.id,
      status: response.status,
    });
  },
);
