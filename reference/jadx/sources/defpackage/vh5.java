package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.MultiInstanceInvalidationService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vh5 extends Binder implements b84 {
    public final /* synthetic */ MultiInstanceInvalidationService a;

    public vh5(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.a = multiInstanceInvalidationService;
        attachInterface(this, b84.o);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        wh5 wh5Var;
        String str = b84.o;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        int i3 = 0;
        a84 a84Var = null;
        a84 a84Var2 = null;
        if (i == 1) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(a84.m);
                if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a84)) {
                    z74 z74Var = new z74();
                    z74Var.a = strongBinder;
                    a84Var = z74Var;
                } else {
                    a84Var = (a84) iInterfaceQueryLocalInterface;
                }
            }
            String string = parcel.readString();
            a84Var.getClass();
            if (string != null) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = this.a;
                synchronized (multiInstanceInvalidationService.c) {
                    try {
                        int i4 = multiInstanceInvalidationService.a + 1;
                        multiInstanceInvalidationService.a = i4;
                        if (multiInstanceInvalidationService.c.register(a84Var, Integer.valueOf(i4))) {
                            multiInstanceInvalidationService.b.put(Integer.valueOf(i4), string);
                            i3 = i4;
                        } else {
                            multiInstanceInvalidationService.a--;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            parcel2.writeNoException();
            parcel2.writeInt(i3);
            return true;
        }
        if (i == 2) {
            IBinder strongBinder2 = parcel.readStrongBinder();
            if (strongBinder2 != null) {
                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface(a84.m);
                if (iInterfaceQueryLocalInterface2 == null || !(iInterfaceQueryLocalInterface2 instanceof a84)) {
                    z74 z74Var2 = new z74();
                    z74Var2.a = strongBinder2;
                    a84Var2 = z74Var2;
                } else {
                    a84Var2 = (a84) iInterfaceQueryLocalInterface2;
                }
            }
            int i5 = parcel.readInt();
            a84Var2.getClass();
            MultiInstanceInvalidationService multiInstanceInvalidationService2 = this.a;
            synchronized (multiInstanceInvalidationService2.c) {
                multiInstanceInvalidationService2.c.unregister(a84Var2);
            }
            parcel2.writeNoException();
            return true;
        }
        if (i != 3) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        int i6 = parcel.readInt();
        String[] strArrCreateStringArray = parcel.createStringArray();
        strArrCreateStringArray.getClass();
        MultiInstanceInvalidationService multiInstanceInvalidationService3 = this.a;
        synchronized (multiInstanceInvalidationService3.c) {
            String str2 = (String) multiInstanceInvalidationService3.b.get(Integer.valueOf(i6));
            if (str2 == null) {
                Log.w("ROOM", "Remote invalidation client ID not registered");
            } else {
                int iBeginBroadcast = multiInstanceInvalidationService3.c.beginBroadcast();
                while (true) {
                    wh5Var = multiInstanceInvalidationService3.c;
                    if (i3 >= iBeginBroadcast) {
                        break;
                    }
                    try {
                        Object broadcastCookie = wh5Var.getBroadcastCookie(i3);
                        broadcastCookie.getClass();
                        Integer num = (Integer) broadcastCookie;
                        int iIntValue = num.intValue();
                        String str3 = (String) multiInstanceInvalidationService3.b.get(num);
                        if (i6 != iIntValue && str2.equals(str3)) {
                            try {
                                ((a84) multiInstanceInvalidationService3.c.getBroadcastItem(i3)).b(strArrCreateStringArray);
                            } catch (RemoteException e) {
                                Log.w("ROOM", "Error invoking a remote callback", e);
                            }
                        }
                        i3++;
                    } catch (Throwable th2) {
                        multiInstanceInvalidationService3.c.finishBroadcast();
                        throw th2;
                    }
                }
                wh5Var.finishBroadcast();
            }
        }
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
