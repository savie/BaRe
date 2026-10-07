package defpackage;
import android.os.IBinder;
import android.os.RemoteException;
public final class t09 implements IBinder.DeathRecipient {
    public final zz8 a;
    public t09(zz8 a){this.a=a;}
    @Override public final void binderDied(){
        zz8 z=this.a;
        z.b.b("reportBinderDeath",new Object[0]);
        if(z.j.get()==null){
            z.b.b("%s : Binder has died.",new Object[]{z.c});
            java.util.Iterator it=z.d.iterator();
            while(it.hasNext()) ((s09)it.next()).a(new RemoteException(String.valueOf(z.c).concat(" : Binder has died.")));
            z.d.clear();
            synchronized(z.f){z.e();}
        } else { e6.d(); }
    }
}