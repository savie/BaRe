package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oz4 {
    public final Context a;

    public oz4(Context context) {
        this.a = context;
    }

    public final List a(dd1 dd1Var) {
        Object bn6Var;
        long j;
        Future futurePoll;
        Iterable iterable;
        dd1Var.getClass();
        h80 h80VarJ = z85.j(dd1Var);
        ov2 ov2Var = ov2.a;
        if (h80VarJ != null) {
            long jNanoTime = System.nanoTime();
            Context context = this.a;
            Object systemService = context.getSystemService("connectivity");
            systemService.getClass();
            Network activeNetwork = ((ConnectivityManager) systemService).getActiveNetwork();
            if (activeNetwork != null) {
                Object systemService2 = context.getSystemService("connectivity");
                systemService2.getClass();
                NetworkCapabilities networkCapabilities = ((ConnectivityManager) systemService2).getNetworkCapabilities(activeNetwork);
                if (networkCapabilities == null || (!networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(3))) {
                    vr6.i$default(vr6.INSTANCE, "LocalCloudServerDiscovery", "Skipping scan for " + dd1Var + ": active network is not Wi-Fi/Ethernet", null, 4, null);
                    return ov2Var;
                }
                try {
                    Object systemService3 = context.getSystemService("connectivity");
                    systemService3.getClass();
                    LinkProperties linkProperties = ((ConnectivityManager) systemService3).getLinkProperties(activeNetwork);
                    if (linkProperties == null) {
                        bn6Var = ov2Var;
                    } else {
                        List<LinkAddress> linkAddresses = linkProperties.getLinkAddresses();
                        linkAddresses.getClass();
                        ArrayList arrayList = new ArrayList();
                        for (LinkAddress linkAddress : linkAddresses) {
                            InetAddress address = linkAddress.getAddress();
                            Inet4Address inet4Address = address instanceof Inet4Address ? (Inet4Address) address : null;
                            List listJ = inet4Address == null ? null : b05.j(inet4Address, linkAddress.getPrefixLength());
                            if (listJ != null) {
                                arrayList.add(listJ);
                            }
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            el1.K0((Iterable) it.next(), arrayList2);
                        }
                        bn6Var = el1.v1(new LinkedHashSet(arrayList2));
                    }
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                Throwable thA = en6.a(bn6Var);
                if (thA != null) {
                    vr6.e$default(vr6.INSTANCE, "LocalCloudServerDiscovery", "Unable to read active network hosts", thA, null, 8, null);
                    bn6Var = ov2Var;
                }
                List<String> list = (List) bn6Var;
                if (list.isEmpty()) {
                    list = null;
                }
                if (list != null) {
                    ArrayList arrayList3 = new ArrayList();
                    for (String str : list) {
                        List<xi1> list2 = (List) h80VarJ.c;
                        ArrayList arrayList4 = new ArrayList(hl1.G0(list2, 10));
                        for (xi1 xi1Var : list2) {
                            ArrayList arrayList5 = arrayList4;
                            arrayList5.add(new kj1(str, xi1Var.b, (dd1) h80VarJ.b, xi1Var.a, xi1Var.c));
                            arrayList4 = arrayList5;
                        }
                        el1.K0(arrayList4, arrayList3);
                    }
                    vr6.i$default(vr6.INSTANCE, "LocalCloudServerDiscovery", "Starting scan for " + dd1Var + ": hosts=" + list.size() + ", targets=" + arrayList3.size(), null, 4, null);
                    gv7 gv7Var = ij1.a;
                    SocketFactory socketFactory = activeNetwork.getSocketFactory();
                    socketFactory.getClass();
                    if (arrayList3.isEmpty()) {
                        iterable = ov2Var;
                        j = 0;
                    } else {
                        ArrayList<cj1> arrayList6 = new ArrayList(hl1.G0(arrayList3, 10));
                        int i = 0;
                        for (Object obj : arrayList3) {
                            int i2 = i + 1;
                            if (i < 0) {
                                fl1.F0();
                                throw null;
                            }
                            arrayList6.add(new cj1(i, (kj1) obj));
                            i = i2;
                        }
                        ArrayList arrayList7 = new ArrayList();
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (cj1 cj1Var : arrayList6) {
                            kj1 kj1Var = cj1Var.b;
                            ej1 ej1Var = kj1Var.c != dd1.WebDav ? null : new ej1(kj1Var.b, kj1Var.d, kj1Var.a);
                            if (ej1Var != null) {
                                Object arrayList8 = linkedHashMap.get(ej1Var);
                                if (arrayList8 == null) {
                                    arrayList8 = new ArrayList();
                                    linkedHashMap.put(ej1Var, arrayList8);
                                }
                                ((Collection) arrayList8).add(cj1Var);
                            } else {
                                arrayList7.add(new dj1(nc8.I(cj1Var)));
                            }
                        }
                        j = 0;
                        Collection<List> collectionValues = linkedHashMap.values();
                        collectionValues.getClass();
                        ArrayList arrayList9 = new ArrayList(hl1.G0(collectionValues, 10));
                        for (List list3 : collectionValues) {
                            list3.getClass();
                            arrayList9.add(new dj1(el1.n1(list3, new gj1(0))));
                        }
                        el1.K0(arrayList9, arrayList7);
                        List listN1 = el1.n1(arrayList7, new qs0(1));
                        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(l73.h(64, 1, 64));
                        ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(executorServiceNewFixedThreadPool);
                        try {
                            Iterator it2 = listN1.iterator();
                            while (it2.hasNext()) {
                                executorCompletionService.submit(new yi1(0, (dj1) it2.next(), socketFactory));
                            }
                            ArrayList arrayList10 = new ArrayList();
                            long jNanoTime2 = System.nanoTime() + 12000000000L;
                            int size = listN1.size();
                            for (int i3 = 0; i3 < size; i3++) {
                                long jNanoTime3 = jNanoTime2 - System.nanoTime();
                                if (jNanoTime3 > 0 && (futurePoll = executorCompletionService.poll(jNanoTime3, TimeUnit.NANOSECONDS)) != null) {
                                    List list4 = (List) futurePoll.get();
                                    list4.getClass();
                                    el1.K0(list4, arrayList10);
                                }
                            }
                            List listN2 = el1.n1(arrayList10, new y09(2));
                            ArrayList arrayList11 = new ArrayList(hl1.G0(listN2, 10));
                            Iterator it3 = listN2.iterator();
                            while (it3.hasNext()) {
                                arrayList11.add(((bj1) it3.next()).b);
                            }
                            executorServiceNewFixedThreadPool.shutdownNow();
                            iterable = arrayList11;
                        } catch (Throwable th2) {
                            executorServiceNewFixedThreadPool.shutdownNow();
                            throw th2;
                        }
                    }
                    ArrayList<jj1> arrayList12 = new ArrayList();
                    for (Object obj2 : iterable) {
                        if (((jj1) obj2).b) {
                            arrayList12.add(obj2);
                        }
                    }
                    long jNanoTime4 = (System.nanoTime() - jNanoTime) / 1000000;
                    long j2 = jNanoTime4 < j ? j : jNanoTime4;
                    ArrayList arrayList13 = new ArrayList(hl1.G0(arrayList12, 10));
                    for (jj1 jj1Var : arrayList12) {
                        kj1 kj1Var2 = jj1Var.a;
                        arrayList13.add(new vi1(kj1Var2.c, kj1Var2.d, kj1Var2.a, kj1Var2.b, kj1Var2.e, jj1Var.d, j2));
                    }
                    long j3 = j2;
                    HashSet hashSet = new HashSet();
                    ArrayList arrayList14 = new ArrayList();
                    for (Object obj3 : arrayList13) {
                        vi1 vi1Var = (vi1) obj3;
                        if (hashSet.add(fl1.A0(vi1Var.a, vi1Var.b, vi1Var.c, Integer.valueOf(vi1Var.d)))) {
                            arrayList14.add(obj3);
                        }
                    }
                    if (arrayList14.isEmpty()) {
                        vr6.i$default(vr6.INSTANCE, "LocalCloudServerDiscovery", "No " + dd1Var + " server found after " + j3 + "ms", null, 4, null);
                        return ov2Var;
                    }
                    vr6.i$default(vr6.INSTANCE, "LocalCloudServerDiscovery", "Found " + arrayList14.size() + TokenAuthenticationScheme.SCHEME_DELIMITER + dd1Var + " server candidate(s) after " + j3 + "ms: " + el1.Y0(arrayList14, null, null, null, new hi(5), 31), null, 4, null);
                    return arrayList14;
                }
            }
        }
        return ov2Var;
    }
}
