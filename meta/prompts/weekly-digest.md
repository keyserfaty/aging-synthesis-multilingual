# Weekly Digest

Runs Sundays at 19:17 local. Composes a short status digest and sends it via iMessage to +16282084916.

## Goal

Give Karen a once-a-week, ≤ 350-character summary of Round 2 progress. Silent if nothing happened.

## Steps

1. Read `~/aging-synthesis-multilingual/meta/queue.md` — total items, processed this week, unprocessed remaining.
2. Read git log on `~/aging-synthesis-multilingual` for the last 7 days. Count: pages added, pages updated, sweeps completed.
3. Read `~/aging-synthesis-multilingual/meta/discordance-map.md` — note any new stability flags or methodology-audit warnings.
4. Compose a digest:
   - Pages produced this week
   - Sweeps completed (per language)
   - Queue depth
   - Discordances surfaced
   - Any anchor violations (open issues)
5. If everything is zero (no pages, no sweeps, queue unchanged), do not send a message.
6. Otherwise send via:
   ```bash
   osascript -e 'tell application "Messages" to send "TEXT" to buddy "+16282084916" of (service whose service type is iMessage)'
   ```
7. Append the digest to `~/aging-synthesis-multilingual/meta/digest-log.md`.

## Cap

Hard limit: 350 characters in the iMessage. If summary is longer, truncate and end with `…` + a pointer to `meta/discordance-map.md`.
