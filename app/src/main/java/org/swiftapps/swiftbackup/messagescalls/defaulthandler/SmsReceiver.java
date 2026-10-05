package org.swiftapps.swiftbackup.messagescalls.defaulthandler;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import android.util.Log;
import defpackage.pe4;
import java.util.GregorianCalendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public class SmsReceiver extends BroadcastReceiver {
    public final String a = "SmsReceiver";

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String strReplace;
        context.getClass();
        intent.getClass();
        String action = intent.getAction();
        action.getClass();
        String strConcat = "Intent recieved: ".concat(action);
        String str = this.a;
        Log.i(str, strConcat);
        if (!pe4.d(intent.getAction(), "android.provider.Telephony.SMS_RECEIVED") || intent.getExtras() == null) {
            return;
        }
        SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
        if (messagesFromIntent == null) {
            Log.w(str, "onReceive: null SmsMessage[]");
            return;
        }
        Log.i(str, "onReceive: Messsages received, length = " + messagesFromIntent.length);
        SmsMessage smsMessage = messagesFromIntent[0];
        ContentValues contentValues = new ContentValues();
        contentValues.put("address", smsMessage.getDisplayOriginatingAddress());
        GregorianCalendar gregorianCalendar = new GregorianCalendar(2011, 8, 18);
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        long jCurrentTimeMillis = System.currentTimeMillis();
        gregorianCalendar2.setTimeInMillis(jCurrentTimeMillis);
        if (gregorianCalendar2.before(gregorianCalendar)) {
            jCurrentTimeMillis = smsMessage.getTimestampMillis();
        }
        contentValues.put("date", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("date_sent", Long.valueOf(smsMessage.getTimestampMillis()));
        contentValues.put("protocol", Integer.valueOf(smsMessage.getProtocolIdentifier()));
        contentValues.put("read", (Integer) 0);
        contentValues.put("seen", (Integer) 0);
        String pseudoSubject = smsMessage.getPseudoSubject();
        pseudoSubject.getClass();
        if (pseudoSubject.length() > 0) {
            contentValues.put("subject", smsMessage.getPseudoSubject());
        }
        contentValues.put("reply_path_present", Integer.valueOf(smsMessage.isReplyPathPresent() ? 1 : 0));
        contentValues.put("service_center", smsMessage.getServiceCenterAddress());
        String displayMessageBody = smsMessage.getDisplayMessageBody();
        if (displayMessageBody == null || displayMessageBody.length() == 0) {
            strReplace = "";
        } else {
            strReplace = displayMessageBody.replace('\f', '\n');
            strReplace.getClass();
        }
        contentValues.put("body", strReplace);
        Long asLong = contentValues.getAsLong("thread_id");
        contentValues.getAsString("address");
        if (asLong != null) {
            int i = (asLong.longValue() > 0L ? 1 : (asLong.longValue() == 0L ? 0 : -1));
        }
        context.getContentResolver().insert(Telephony.Sms.Inbox.CONTENT_URI, contentValues);
    }
}
