package defpackage;

import android.os.storage.StorageManager$StorageVolumeCallback;
import android.os.storage.StorageVolume;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class do7 extends StorageManager$StorageVolumeCallback {
    public final void onStateChanged(StorageVolume storageVolume) {
        storageVolume.getClass();
        Log.w("StorageEventListener", "Storage change event: " + storageVolume);
        eo7 eo7Var = eo7.a;
        eo7.c.k(Boolean.TRUE);
        zn7.q.d();
    }
}
