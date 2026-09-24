package defpackage;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import org.swiftapps.swiftbackup.wifi.PasswordInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lq6 implements js8 {
    public final gt8 a = new gt8();

    @Override // defpackage.js8
    public final is8 read() {
        Object it8Var;
        Object obj;
        String entPhase2Method;
        String entIdentity;
        String entAnonIdentity;
        String entPassword;
        String entCaCert;
        gt8 gt8Var = this.a;
        synchronized (gt8Var) {
            try {
                if (mp6.g) {
                    rk rkVar = new rk(0, gt8Var, gt8.class, "copyFreshSystemConfig", "copyFreshSystemConfig()Z", 0, 5);
                    kn3 kn3Var = new kn3(gt8Var, 19);
                    gt8Var.b.h();
                    if (((Boolean) rkVar.invoke()).booleanValue()) {
                        try {
                            it8Var = new jt8((List) kn3Var.invoke());
                        } catch (Exception e) {
                            it8Var = new it8(e);
                        }
                        obj = it8Var;
                    } else {
                        obj = ht8.a;
                    }
                } else {
                    vr6.e$default(vr6.INSTANCE, "WifiPasswordParser", "parse: Root not available", null, 4, null);
                    obj = ht8.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!(obj instanceof jt8)) {
            if (obj.equals(ht8.a)) {
                return new gs8(ds8.ROOT_COPY_FAILED, ks8.ROOT_XML, null);
            }
            if (obj instanceof it8) {
                return new gs8(ds8.ROOT_PARSE_FAILED, ks8.ROOT_XML, ((it8) obj).a);
            }
            q.j();
            return null;
        }
        List<PasswordInfo> list = ((jt8) obj).a;
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        for (PasswordInfo passwordInfo : list) {
            passwordInfo.getClass();
            et8 et8VarCreateForAndroidQ = et8.Companion.createForAndroidQ(passwordInfo);
            BitSet bitSet = new BitSet();
            String entEapMethod = passwordInfo.getEntEapMethod();
            if ((entEapMethod == null || entEapMethod.length() == 0) && (((entPhase2Method = passwordInfo.getEntPhase2Method()) == null || entPhase2Method.length() == 0) && (((entIdentity = passwordInfo.getEntIdentity()) == null || entIdentity.length() == 0) && (((entAnonIdentity = passwordInfo.getEntAnonIdentity()) == null || entAnonIdentity.length() == 0) && (((entPassword = passwordInfo.getEntPassword()) == null || entPassword.length() == 0) && ((entCaCert = passwordInfo.getEntCaCert()) == null || entCaCert.length() == 0)))))) {
                String psk = passwordInfo.getPsk();
                if (psk == null || psk.length() == 0) {
                    bitSet.set(0);
                } else {
                    bitSet.set(1);
                }
            } else {
                bitSet.set(2);
            }
            et8VarCreateForAndroidQ.setAllowedKeyManagement(bitSet);
            arrayList.add(et8VarCreateForAndroidQ);
        }
        return new hs8(arrayList, ks8.ROOT_XML);
    }
}
