package com.bare.messagescalls.backups;

import android.content.Context;

import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageSelection;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/** Reference vd5-compatible local Messages backup inventory/retention surface. */
public final class MessagesBackupRepository {
    private final Context context;
    public MessagesBackupRepository(Context context){this.context=context.getApplicationContext();}

    public List<MessageBackupItem> listLocal() {
        File root=localRoot();
        if(root==null||!root.isDirectory()) return Collections.emptyList();
        File[] files=root.listFiles();
        if(files==null) return Collections.emptyList();
        List<MessageBackupItem> result=new ArrayList<>();
        for(File file:files){
            if(!file.isFile()) continue;
            MessageBackupItem item=parse(file.getName());
            if(item!=null) result.add(item);
        }
        result.sort(Comparator.comparingLong(MessageBackupItem::getBackupTime).reversed());
        return result;
    }

    public boolean deleteAllLocal() {
        File root=localRoot();
        if(root==null||!root.exists()) return true;
        File[] files=root.listFiles();
        if(files==null) return false;
        boolean ok=true;
        for(File file:files) if(file.isFile()) ok &= file.delete();
        return ok;
    }

    public int enforceRetention(int maxBackups) {
        if(maxBackups<=0) return 0;
        List<MessageBackupItem> items=listLocal();
        int removed=0;
        for(int i=maxBackups;i<items.size();i++){
            File file=new File(localRoot(),items.get(i).getFileName());
            if(file.isFile() && file.delete()) removed++;
        }
        return removed;
    }

    private File localRoot(){
        StorageSelection selection=new LocalStorageCoordinator(
                context,new AndroidStorageInventory(context)).resolveSelection();
        if(selection==null||selection.selected==null) return null;
        return new File(new File(new File(selection.selected.rootPath,"BaRe"),"backups"),"sms/local");
    }

    private static MessageBackupItem parse(String name){
        try{
            String[] p=name.split("\\.",-1);
            if(p.length<5) return null;
            if(!("v2".equals(p[0])||"v3".equals(p[0]))) return null;
            long time=Long.parseLong(p[1]);
            int conversations=Integer.parseInt(p[2]);
            int sms=Integer.parseInt(p[3]);
            return new MessageBackupItem(name,time,sms,conversations,p[4]);
        }catch(RuntimeException ignored){return null;}
    }
}