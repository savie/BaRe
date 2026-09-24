package defpackage;

import android.os.Looper;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nk7 extends mk7 {
    public static final /* synthetic */ int b = 0;

    public static ArrayList c(HashMap map, String str, String str2) throws FileNotFoundException {
        int iNextIndex;
        Object next;
        Object next2;
        Object next3;
        Object next4;
        Object next5;
        Collection collectionValues = map.values();
        collectionValues.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionValues.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String str3 = ((kk7) it.next()).a;
            Integer numW = str3 != null ? uq7.W(10, str3) : null;
            if (numW != null) {
                arrayList.add(numW);
            }
        }
        if (arrayList.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, "SsaidHelper", "Current ids empty!", null, 4, null);
            return null;
        }
        Integer num = (Integer) el1.c1(arrayList);
        if (num != null) {
            int iIntValue = num.intValue() + 1;
            g00 g00Var = g00.a;
            Integer numN = g00.n(str);
            if (numN != null) {
                int iIntValue2 = numN.intValue();
                List listB = cz4.b();
                if (listB == null || listB.isEmpty()) {
                    listB = null;
                }
                if (listB != null) {
                    ListIterator listIterator = listB.listIterator(listB.size());
                    while (true) {
                        if (!listIterator.hasPrevious()) {
                            iNextIndex = -1;
                            break;
                        }
                        if (nq7.Z((String) listIterator.previous(), "package=", false)) {
                            iNextIndex = listIterator.nextIndex();
                            break;
                        }
                    }
                    if (iNextIndex != -1) {
                        String str4 = (String) listB.get(iNextIndex);
                        List listX0 = nq7.x0(str4, new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER}, 6);
                        if (listX0.isEmpty()) {
                            listX0 = null;
                        }
                        if (listX0 != null) {
                            Iterator it2 = listX0.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it2.next();
                            } while (!uq7.V((String) next, "id=", false));
                            String str5 = (String) next;
                            if (str5 != null) {
                                Iterator it3 = listX0.iterator();
                                do {
                                    if (!it3.hasNext()) {
                                        next2 = null;
                                        break;
                                    }
                                    next2 = it3.next();
                                } while (!uq7.V((String) next2, "name=", false));
                                String str6 = (String) next2;
                                if (str6 != null) {
                                    Iterator it4 = listX0.iterator();
                                    do {
                                        if (!it4.hasNext()) {
                                            next3 = null;
                                            break;
                                        }
                                        next3 = it4.next();
                                    } while (!uq7.V((String) next3, "package=", false));
                                    String str7 = (String) next3;
                                    if (str7 != null) {
                                        Iterator it5 = listX0.iterator();
                                        do {
                                            if (!it5.hasNext()) {
                                                next4 = null;
                                                break;
                                            }
                                            next4 = it5.next();
                                        } while (!uq7.V((String) next4, "value=", false));
                                        String str8 = (String) next4;
                                        if (str8 != null) {
                                            Iterator it6 = listX0.iterator();
                                            do {
                                                if (!it6.hasNext()) {
                                                    next5 = null;
                                                    break;
                                                }
                                                next5 = it6.next();
                                            } while (!uq7.V((String) next5, "defaultValue=", false));
                                            String str9 = (String) next5;
                                            if (str9 != null) {
                                                String strT = uq7.T(uq7.T(uq7.T(uq7.T(uq7.T(str4, str5, "id=\"" + iIntValue + "\""), str6, "name=\"" + iIntValue2 + "\""), str7, "package=\"" + str + "\""), str8, "value=\"" + str2 + "\""), str9, "defaultValue=\"" + str2 + "\"");
                                                if (strT.length() != 0) {
                                                    vr6.i$default(vr6.INSTANCE, "SsaidHelper", "Adding ssaid", null, 4, null);
                                                    ArrayList arrayList2 = new ArrayList(listB);
                                                    arrayList2.add(iNextIndex + 1, strT);
                                                    return arrayList2;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public static ArrayList d(String str, String str2) throws FileNotFoundException {
        Object next;
        Object next2;
        List listB = cz4.b();
        if (listB == null || listB.isEmpty()) {
            listB = null;
        }
        if (listB != null) {
            String strK = eq3.k("package=\"", str, "\"");
            Iterator it = listB.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                if (nq7.Z((String) it.next(), strK, false)) {
                    break;
                }
                i++;
            }
            if (i == -1) {
                l0.e("replaceSsaid() called but ssaid file does not have ssaid for this package!");
                return null;
            }
            String str3 = (String) listB.get(i);
            List listX0 = nq7.x0(str3, new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER}, 6);
            Iterator it2 = listX0.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!uq7.V((String) next, "value=", false));
            String str4 = (String) next;
            if (str4 != null) {
                Iterator it3 = listX0.iterator();
                do {
                    if (!it3.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it3.next();
                } while (!uq7.V((String) next2, "defaultValue=", false));
                String str5 = (String) next2;
                if (str5 != null) {
                    String strT = uq7.T(uq7.T(str3, str4, "value=\"" + str2 + "\""), str5, "defaultValue=\"" + str2 + "\"");
                    vr6.i$default(vr6.INSTANCE, "SsaidHelper", "Replacing ssaid", null, 4, null);
                    ArrayList arrayList = new ArrayList(listB);
                    arrayList.set(i, strT);
                    return arrayList;
                }
            }
        }
        return null;
    }

    @Override // defpackage.mk7
    public final HashMap a() {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        if (mp6.g) {
            try {
                g00 g00Var = g00.a;
                jr7 jr7Var = new jr7(new File(new File(new File((File) mk7.a.getValue(), "system"), "users"), String.valueOf(g00.i())).getAbsolutePath(), "settings_ssaid.xml");
                if (jr7Var.b("[ -e @@ ]")) {
                    HashMap map = new HashMap();
                    InputStream inputStreamX = xx3.x(jr7Var);
                    inputStreamX.getClass();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamX, f51.a), 8192);
                    try {
                        le3 le3Var = new le3(h77.A0(new me3(rs9.p(bufferedReader), true, new ou(12)), new sl(8)));
                        while (le3Var.hasNext()) {
                            kk7 kk7Var = (kk7) le3Var.next();
                            String str = kk7Var.b;
                            str.getClass();
                            map.put(str, kk7Var);
                        }
                        bufferedReader.close();
                        if (!map.isEmpty()) {
                            vr6.i$default(vr6.INSTANCE, "SsaidHelper", "Built with " + map.size() + " valid entries", null, 4, null);
                            return map;
                        }
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(bufferedReader, th);
                            throw th2;
                        }
                    }
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "SsaidHelper", "buildMap error: ".concat(io4.b(e)), null, 4, null);
                return null;
            }
        }
        return null;
    }

    @Override // defpackage.mk7
    public final void b(String str, String str2) {
        ArrayList arrayListC;
        kk7 kk7Var;
        str.getClass();
        str2.getClass();
        try {
            if (!lk7.a.b(str2)) {
                throw new IllegalStateException("Invalid backed up ssaid value");
            }
            HashMap mapA = a();
            if (mapA == null) {
                return;
            }
            String str3 = null;
            if (mapA.containsKey(str)) {
                kk7 kk7Var2 = (kk7) mapA.get(str);
                if (pe4.d(kk7Var2 != null ? kk7Var2.c : null, str2)) {
                    vr6.i$default(vr6.INSTANCE, "SsaidHelper", "No change in ssaid", null, 4, null);
                    return;
                }
                arrayListC = d(str, str2);
            } else {
                arrayListC = c(mapA, str, str2);
            }
            if (arrayListC != null && !arrayListC.isEmpty()) {
                g00 g00Var = g00.a;
                OutputStream outputStreamE = jd4.E(new jr7(new File(new File(new File((File) mk7.a.getValue(), "system"), "users"), String.valueOf(g00.i())).getAbsolutePath(), "settings_ssaid.xml"));
                try {
                    vr6.i$default(vr6.INSTANCE, "SsaidHelper", "Committing app ssaid, requires device reboot to take effect", null, 4, null);
                    n84.f(arrayListC, outputStreamE, Charset.defaultCharset());
                    rs9.c(outputStreamE, null);
                    HashMap mapA2 = a();
                    if (mapA2 != null && (kk7Var = (kk7) mapA2.get(str)) != null) {
                        str3 = kk7Var.c;
                    }
                    if (!pe4.d(str3, str2)) {
                        throw new IllegalStateException("Verification of committed ssaid failed");
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(outputStreamE, th);
                        throw th2;
                    }
                }
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "SsaidHelper", e.toString(), null, 4, null);
        }
    }
}
