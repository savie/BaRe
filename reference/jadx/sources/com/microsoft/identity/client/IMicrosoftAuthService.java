package com.microsoft.identity.client;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface IMicrosoftAuthService extends IInterface {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class Stub extends Binder implements IMicrosoftAuthService {

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        final class Proxy implements IMicrosoftAuthService {
            private final IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.microsoft.identity.client.IMicrosoftAuthService
            public final Bundle acquireTokenSilently(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.microsoft.identity.client.IMicrosoftAuthService");
                    AccountAdapter.access$100(parcelObtain, bundle);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) AccountAdapter.access$000(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.microsoft.identity.client.IMicrosoftAuthService
            public final Bundle generateSignedHttpRequest(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.microsoft.identity.client.IMicrosoftAuthService");
                    AccountAdapter.access$100(parcelObtain, bundle);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) AccountAdapter.access$000(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.microsoft.identity.client.IMicrosoftAuthService
            public final Bundle getAccounts(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.microsoft.identity.client.IMicrosoftAuthService");
                    AccountAdapter.access$100(parcelObtain, bundle);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) AccountAdapter.access$000(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.microsoft.identity.client.IMicrosoftAuthService
            public final Bundle getCurrentAccount(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.microsoft.identity.client.IMicrosoftAuthService");
                    AccountAdapter.access$100(parcelObtain, bundle);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) AccountAdapter.access$000(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.microsoft.identity.client.IMicrosoftAuthService
            public final Bundle getDeviceMode() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.microsoft.identity.client.IMicrosoftAuthService");
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) AccountAdapter.access$000(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.microsoft.identity.client.IMicrosoftAuthService
            public final Intent getIntentForInteractiveRequest() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.microsoft.identity.client.IMicrosoftAuthService");
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Intent) AccountAdapter.access$000(parcelObtain2, Intent.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.microsoft.identity.client.IMicrosoftAuthService
            public final Bundle hello(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.microsoft.identity.client.IMicrosoftAuthService");
                    AccountAdapter.access$100(parcelObtain, bundle);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) AccountAdapter.access$000(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.microsoft.identity.client.IMicrosoftAuthService
            public final Bundle removeAccount(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.microsoft.identity.client.IMicrosoftAuthService");
                    AccountAdapter.access$100(parcelObtain, bundle);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) AccountAdapter.access$000(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.microsoft.identity.client.IMicrosoftAuthService
            public final Bundle removeAccountFromSharedDevice(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.microsoft.identity.client.IMicrosoftAuthService");
                    AccountAdapter.access$100(parcelObtain, bundle);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) AccountAdapter.access$000(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static IMicrosoftAuthService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.microsoft.identity.client.IMicrosoftAuthService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMicrosoftAuthService)) ? new Proxy(iBinder) : (IMicrosoftAuthService) iInterfaceQueryLocalInterface;
        }
    }

    Bundle acquireTokenSilently(Bundle bundle) throws RemoteException;

    Bundle generateSignedHttpRequest(Bundle bundle) throws RemoteException;

    Bundle getAccounts(Bundle bundle) throws RemoteException;

    Bundle getCurrentAccount(Bundle bundle) throws RemoteException;

    Bundle getDeviceMode() throws RemoteException;

    Intent getIntentForInteractiveRequest() throws RemoteException;

    Bundle hello(Bundle bundle) throws RemoteException;

    Bundle removeAccount(Bundle bundle) throws RemoteException;

    Bundle removeAccountFromSharedDevice(Bundle bundle) throws RemoteException;
}
