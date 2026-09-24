package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ar4 extends qo0 {
    public boolean e;
    public final ex6 f = new ex6();
    public LabelParams g;
    public LabelParams h;

    /* JADX WARN: Code duplicated, block: B:31:0x0071  */
    /* JADX WARN: Code duplicated, block: B:33:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x0092  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f3 A[SYNTHETIC] */
    public final void j(LabelParams labelParams) {
        String string;
        LabelsData labelsData;
        Map<String, LabelParams> labelParamsMap;
        Collection<LabelParams> collectionValues;
        Iterator<T> it;
        String name;
        String lowerCase;
        String name2;
        String string2;
        this.h = labelParams;
        String lowerCase2 = null;
        if (y13.s(labelParams)) {
            string = null;
        } else {
            SwiftApp.Companion companion = SwiftApp.d;
            string = SwiftApp.Companion.c().getString(R.string.invalid_label_name);
        }
        if (string == null || string.length() == 0) {
            lr4 lr4Var = lr4.a;
            String name3 = labelParams.getName();
            if (name3 != null && name3.length() != 0) {
                LabelParams.Companion.getClass();
                if (name3.length() == 0) {
                    labelsData = lr4.e;
                    if (labelsData != null && (labelParamsMap = labelsData.getLabelParamsMap()) != null && (collectionValues = labelParamsMap.values()) != null && !collectionValues.isEmpty()) {
                        it = collectionValues.iterator();
                        do {
                            if (it.hasNext()) {
                            }
                        } while (!name3.equalsIgnoreCase(((LabelParams) it.next()).getName()));
                        if (this.g == null) {
                            SwiftApp.Companion companion2 = SwiftApp.d;
                            string = SwiftApp.Companion.c().getString(R.string.label_already_exists);
                        } else {
                            name = labelParams.getName();
                            if (name != null) {
                                Locale locale = Locale.getDefault();
                                locale.getClass();
                                lowerCase = name.toLowerCase(locale);
                                lowerCase.getClass();
                            } else {
                                lowerCase = null;
                            }
                            LabelParams labelParams2 = this.g;
                            labelParams2.getClass();
                            name2 = labelParams2.getName();
                            if (name2 != null && (string2 = nq7.H0(name2).toString()) != null) {
                                Locale locale2 = Locale.getDefault();
                                locale2.getClass();
                                lowerCase2 = string2.toLowerCase(locale2);
                                lowerCase2.getClass();
                            }
                            if (!pe4.d(lowerCase, lowerCase2)) {
                                SwiftApp.Companion companion3 = SwiftApp.d;
                                string = SwiftApp.Companion.c().getString(R.string.label_already_exists);
                            }
                        }
                    }
                } else {
                    ArrayList arrayList = (ArrayList) hr4.a();
                    if (arrayList.isEmpty()) {
                        labelsData = lr4.e;
                        if (labelsData != null) {
                            it = collectionValues.iterator();
                            do {
                                if (it.hasNext()) {
                                }
                            } while (!name3.equalsIgnoreCase(((LabelParams) it.next()).getName()));
                            if (this.g == null) {
                                SwiftApp.Companion companion4 = SwiftApp.d;
                                string = SwiftApp.Companion.c().getString(R.string.label_already_exists);
                            } else {
                                name = labelParams.getName();
                                if (name != null) {
                                    Locale locale3 = Locale.getDefault();
                                    locale3.getClass();
                                    lowerCase = name.toLowerCase(locale3);
                                    lowerCase.getClass();
                                } else {
                                    lowerCase = null;
                                }
                                LabelParams labelParams3 = this.g;
                                labelParams3.getClass();
                                name2 = labelParams3.getName();
                                if (name2 != null) {
                                    Locale locale4 = Locale.getDefault();
                                    locale4.getClass();
                                    lowerCase2 = string2.toLowerCase(locale4);
                                    lowerCase2.getClass();
                                }
                                if (!pe4.d(lowerCase, lowerCase2)) {
                                    SwiftApp.Companion companion5 = SwiftApp.d;
                                    string = SwiftApp.Companion.c().getString(R.string.label_already_exists);
                                }
                            }
                        }
                    } else {
                        Iterator it2 = arrayList.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                LabelParams labelParams4 = (LabelParams) it2.next();
                                String name4 = labelParams4.getName();
                                if (name4 == null || name4.length() == 0 || !pe4.d(labelParams4.getName(), name3)) {
                                }
                            } else {
                                labelsData = lr4.e;
                                if (labelsData != null) {
                                    it = collectionValues.iterator();
                                    do {
                                        if (it.hasNext()) {
                                        }
                                    } while (!name3.equalsIgnoreCase(((LabelParams) it.next()).getName()));
                                }
                            }
                            if (this.g == null) {
                                SwiftApp.Companion companion6 = SwiftApp.d;
                                string = SwiftApp.Companion.c().getString(R.string.label_already_exists);
                            } else {
                                name = labelParams.getName();
                                if (name != null) {
                                    Locale locale5 = Locale.getDefault();
                                    locale5.getClass();
                                    lowerCase = name.toLowerCase(locale5);
                                    lowerCase.getClass();
                                } else {
                                    lowerCase = null;
                                }
                                LabelParams labelParams5 = this.g;
                                labelParams5.getClass();
                                name2 = labelParams5.getName();
                                if (name2 != null) {
                                    Locale locale6 = Locale.getDefault();
                                    locale6.getClass();
                                    lowerCase2 = string2.toLowerCase(locale6);
                                    lowerCase2.getClass();
                                }
                                if (!pe4.d(lowerCase, lowerCase2)) {
                                    SwiftApp.Companion companion7 = SwiftApp.d;
                                    string = SwiftApp.Companion.c().getString(R.string.label_already_exists);
                                }
                            }
                        }
                    }
                }
            }
        }
        this.f.k(string);
    }
}
