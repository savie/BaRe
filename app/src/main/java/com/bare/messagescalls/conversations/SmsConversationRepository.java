package com.bare.messagescalls.conversations;

import android.content.Context;
import android.database.Cursor;
import android.provider.Telephony;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/** Reference ki7-backed SMS conversation reader. */
public final class SmsConversationRepository {
    private final android.content.ContentResolver resolver;
    public SmsConversationRepository(Context context){resolver=context.getApplicationContext().getContentResolver();}

    public List<SmsMessageState> getMessages(long threadId){
        List<SmsMessageState> result=new ArrayList<>();
        Cursor cursor=resolver.query(
                Telephony.Sms.CONTENT_URI,
                new String[]{"address","body","date","date_sent","type"},
                "thread_id = ?",
                new String[]{String.valueOf(threadId)},
                "date ASC");
        if(cursor==null) return result;
        try{
            int address=cursor.getColumnIndex("address"), body=cursor.getColumnIndex("body");
            int date=cursor.getColumnIndex("date"), sent=cursor.getColumnIndex("date_sent");
            int type=cursor.getColumnIndex("type");
            while(cursor.moveToNext()){
                long when=!cursor.isNull(date)?cursor.getLong(date):(!cursor.isNull(sent)?cursor.getLong(sent):0L);
                int box=type>=0&&!cursor.isNull(type)?cursor.getInt(type):0;
                result.add(new SmsMessageState(
                        address<0||cursor.isNull(address)?null:cursor.getString(address),
                        body<0||cursor.isNull(body)?null:cursor.getString(body),
                        when, box==Telephony.Sms.MESSAGE_TYPE_INBOX));
            }
        }finally{cursor.close();}
        result.sort(Comparator.comparingLong(SmsMessageState::getDate));
        return result;
    }
}
