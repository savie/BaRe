package com.bare.messagescalls.defaulthandler;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import android.util.Log;

import java.util.GregorianCalendar;

/** Reference SMS_DELIVER/SMS_RECEIVED inbound integration endpoint. */
public class SmsReceiver extends BroadcastReceiver {
    private static final String TAG = "SmsReceiver";

    @Override
    public final void onReceive(Context context, Intent intent) {
        if (context == null || intent == null) return;

        String action = intent.getAction();
        if (action == null) return;
        Log.i(TAG, "Intent recieved: " + action);

        if (!"android.provider.Telephony.SMS_RECEIVED".equals(action)
                && !"android.provider.Telephony.SMS_DELIVER".equals(action)) {
            return;
        }
        if (intent.getExtras() == null) return;

        SmsMessage[] messages = Telephony.Sms.Intents.getMessagesFromIntent(intent);
        if (messages == null) {
            Log.w(TAG, "onReceive: null SmsMessage[]");
            return;
        }
        Log.i(TAG, "onReceive: Messsages received, length = " + messages.length);
        if (messages.length == 0 || messages[0] == null) return;

        SmsMessage message = messages[0];
        ContentValues values = new ContentValues();
        values.put("address", message.getDisplayOriginatingAddress());

        GregorianCalendar cutoff = new GregorianCalendar(2011, 8, 18);
        long date = System.currentTimeMillis();
        GregorianCalendar now = new GregorianCalendar();
        now.setTimeInMillis(date);
        if (now.before(cutoff)) date = message.getTimestampMillis();

        values.put("date", date);
        values.put("date_sent", message.getTimestampMillis());
        values.put("protocol", message.getProtocolIdentifier());
        values.put("read", 0);
        values.put("seen", 0);

        String subject = message.getPseudoSubject();
        if (subject != null && !subject.isEmpty()) values.put("subject", subject);

        values.put("reply_path_present", message.isReplyPathPresent() ? 1 : 0);
        values.put("service_center", message.getServiceCenterAddress());

        String body = message.getDisplayMessageBody();
        values.put("body", body == null || body.isEmpty() ? "" : body.replace('\f', '\n'));

        context.getContentResolver().insert(Telephony.Sms.Inbox.CONTENT_URI, values);
    }
}
