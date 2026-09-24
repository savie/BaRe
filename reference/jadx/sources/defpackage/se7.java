package defpackage;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.ArraySet;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class se7 extends Process implements Parcelable {
    public t84 a;
    public ParcelFileDescriptor.AutoCloseOutputStream b;
    public ParcelFileDescriptor.AutoCloseInputStream c;
    public static final Set d = Collections.synchronizedSet(new ArraySet());
    public static final Parcelable.Creator<se7> CREATOR = new mk(5);

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.lang.Process
    public final void destroy() {
        try {
            r84 r84Var = (r84) this.a;
            r84Var.getClass();
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("moe.shizuku.server.IRemoteProcess");
                if (!r84Var.a.transact(6, parcelObtain, parcelObtain2, 0)) {
                    int i = s84.a;
                }
                parcelObtain2.readException();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        } catch (RemoteException e) {
            y5.k(e);
        }
    }

    @Override // java.lang.Process
    public final int exitValue() {
        try {
            return ((r84) this.a).a();
        } catch (RemoteException e) {
            y5.k(e);
            return 0;
        }
    }

    @Override // java.lang.Process
    public final InputStream getErrorStream() {
        try {
            return new ParcelFileDescriptor.AutoCloseInputStream(((r84) this.a).f());
        } catch (RemoteException e) {
            y5.k(e);
            return null;
        }
    }

    @Override // java.lang.Process
    public final InputStream getInputStream() {
        if (this.c == null) {
            try {
                this.c = new ParcelFileDescriptor.AutoCloseInputStream(((r84) this.a).g());
            } catch (RemoteException e) {
                y5.k(e);
                return null;
            }
        }
        return this.c;
    }

    @Override // java.lang.Process
    public final OutputStream getOutputStream() {
        if (this.b == null) {
            try {
                this.b = new ParcelFileDescriptor.AutoCloseOutputStream(((r84) this.a).j());
            } catch (RemoteException e) {
                y5.k(e);
                return null;
            }
        }
        return this.b;
    }

    @Override // java.lang.Process
    public final int waitFor() {
        try {
            return ((r84) this.a).k();
        } catch (RemoteException e) {
            y5.k(e);
            return 0;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(((r84) this.a).asBinder());
    }
}
