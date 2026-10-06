package com.microsoft.identity.common.internal.ui.browser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.util.Base64;
import com.microsoft.identity.common.internal.broker.PackageHelper;
import com.microsoft.identity.common.java.browser.Browser;
import com.microsoft.identity.common.java.ui.BrowserDescriptor;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.logging.Logger;
import defpackage.l0;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidBrowserSelector {
    private final PackageManager mPackageManager;

    public AndroidBrowserSelector(Context context) {
        this.mPackageManager = context.getPackageManager();
    }

    private static boolean matches(BrowserDescriptor browserDescriptor, Browser browser) {
        if (!StringUtil.equalsIgnoreCase(browserDescriptor.getPackageName(), browser.getPackageName())) {
            return false;
        }
        if (!browserDescriptor.getSignatureHashes().equals(browser.getSignatureHashes())) {
            String str = "Browser: " + browser.getPackageName() + " signature hash not match";
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("AndroidBrowserSelector:matches", str);
            return false;
        }
        if (!StringUtil.isNullOrEmpty(browserDescriptor.getVersionLowerBound()) && FileUtil.compareSemanticVersion(browser.getVersion(), browserDescriptor.getVersionLowerBound()) == -1) {
            String str2 = "Browser: " + browser.getPackageName() + " version too low (Expected: " + browserDescriptor.getVersionLowerBound() + " Get: " + browser.getVersion() + ")";
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("AndroidBrowserSelector:matches", str2);
            return false;
        }
        if (StringUtil.isNullOrEmpty(browserDescriptor.getVersionUpperBound()) || FileUtil.compareSemanticVersion(browser.getVersion(), browserDescriptor.getVersionUpperBound()) != 1) {
            return true;
        }
        String str3 = "Browser: " + browser.getPackageName() + " version too high (Expected: " + browserDescriptor.getVersionUpperBound() + " Get: " + browser.getVersion() + ")";
        int i3 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn("AndroidBrowserSelector:matches", str3);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final ArrayList getBrowsers(BrowserDescriptor browserDescriptor) {
        Iterator<ResolveInfo> it;
        String str;
        HashSet hashSet;
        String str2 = "android.intent.action.VIEW";
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        if (browserDescriptor != null) {
            String str3 = "Querying preferred browser: " + browserDescriptor.getPackageName();
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AndroidBrowserSelector:getBrowsers", str3);
            intent.setPackage(browserDescriptor.getPackageName());
        }
        PackageManager packageManager = this.mPackageManager;
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65600);
        String str4 = "Querying browsers. Got back " + listQueryIntentActivities.size() + " browsers.";
        int i2 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("AndroidBrowserSelector:getBrowsers", str4);
        ArrayList arrayList = new ArrayList();
        Iterator<ResolveInfo> it2 = listQueryIntentActivities.iterator();
        while (it2.hasNext()) {
            ResolveInfo next = it2.next();
            if (next.filter.hasAction(str2) && next.filter.hasCategory("android.intent.category.BROWSABLE") && next.filter.schemesIterator() != null && next.filter.authoritiesIterator() == null) {
                Iterator<String> itSchemesIterator = next.filter.schemesIterator();
                int i3 = 0;
                boolean zEquals = false;
                boolean zEquals2 = false;
                while (true) {
                    if (itSchemesIterator.hasNext()) {
                        String next2 = itSchemesIterator.next();
                        zEquals |= "http".equals(next2);
                        zEquals2 |= "https".equals(next2);
                        if (zEquals && zEquals2) {
                            try {
                                PackageInfo packageInfo = PackageHelper.getPackageInfo(packageManager, next.activityInfo.packageName);
                                Intent intent2 = new Intent("android.support.customtabs.action.CustomTabsService");
                                intent2.setPackage(packageInfo.packageName);
                                List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent2, i3);
                                boolean z = (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) ? i3 : 1;
                                com.microsoft.identity.common.java.logging.Logger.verbose("AndroidBrowserSelector:getBrowsers", "Browser: " + next.activityInfo.packageName + " supports custom tab: " + z);
                                String str5 = packageInfo.packageName;
                                HashSet hashSet2 = new HashSet();
                                Signature[] signatures = PackageHelper.getSignatures(packageInfo);
                                int length = signatures.length;
                                int i4 = 0;
                                while (i4 < length) {
                                    it = it2;
                                    try {
                                        str = str2;
                                        try {
                                            try {
                                                hashSet2.add(Base64.encodeToString(MessageDigest.getInstance("SHA-512").digest(signatures[i4].toByteArray()), 10));
                                                i4++;
                                                str2 = str;
                                                it2 = it;
                                            } catch (PackageManager.NameNotFoundException unused) {
                                                com.microsoft.identity.common.java.logging.Logger.warn("AndroidBrowserSelector:getBrowsers", "Browser: " + next.activityInfo.packageName + " cannot be generated without the package info.");
                                                str2 = str;
                                                it2 = it;
                                            }
                                        } catch (NoSuchAlgorithmException unused2) {
                                            l0.e("Platform does not supportSHA-512 hashing");
                                            hashSet = null;
                                            arrayList.add(new Browser(str5, hashSet, packageInfo.versionName, z));
                                            str2 = str;
                                            it2 = it;
                                        }
                                    } catch (PackageManager.NameNotFoundException unused3) {
                                        str = str2;
                                        com.microsoft.identity.common.java.logging.Logger.warn("AndroidBrowserSelector:getBrowsers", "Browser: " + next.activityInfo.packageName + " cannot be generated without the package info.");
                                        str2 = str;
                                        it2 = it;
                                    } catch (NoSuchAlgorithmException unused4) {
                                        str = str2;
                                    }
                                }
                                it = it2;
                                str = str2;
                                hashSet = hashSet2;
                                arrayList.add(new Browser(str5, hashSet, packageInfo.versionName, z));
                            } catch (PackageManager.NameNotFoundException unused5) {
                                it = it2;
                            }
                        } else {
                            str2 = str2;
                            it2 = it2;
                            i3 = 0;
                        }
                    } else {
                        it = it2;
                        str = str2;
                        com.microsoft.identity.common.java.logging.Logger.verbose("AndroidBrowserSelector:getBrowsers", "Browser: " + next.activityInfo.packageName + " is not a full browser app.");
                    }
                }
            } else {
                it = it2;
                str = str2;
                com.microsoft.identity.common.java.logging.Logger.verbose("AndroidBrowserSelector:getBrowsers", "Browser: " + next.activityInfo.packageName + " is not a full browser app.");
            }
            str2 = str;
            it2 = it;
        }
        com.microsoft.identity.common.java.logging.Logger.verbose("AndroidBrowserSelector:getBrowsers", null, "Found " + arrayList.size() + " browsers.");
        return arrayList;
    }

    public final Browser selectBrowser(List<BrowserDescriptor> list, BrowserDescriptor browserDescriptor) {
        Browser browser;
        Browser browser2;
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("AndroidBrowserSelector:select", "Select the browser to launch.");
        if (browserDescriptor != null) {
            Iterator it = getBrowsers(browserDescriptor).iterator();
            while (true) {
                if (!it.hasNext()) {
                    browser2 = null;
                    break;
                }
                browser2 = (Browser) it.next();
                if (matches(browserDescriptor, browser2)) {
                    String str = "Preferred Browser's package name: " + browser2.getPackageName() + " version: " + browser2.getVersion();
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AndroidBrowserSelector:getPreferredBrowser", str);
                    break;
                }
            }
            if (browser2 != null) {
                return browser2;
            }
        }
        Iterator it2 = getBrowsers(null).iterator();
        loop1: while (true) {
            if (!it2.hasNext()) {
                browser = null;
                break;
            }
            browser = (Browser) it2.next();
            Iterator<BrowserDescriptor> it3 = list.iterator();
            while (it3.hasNext()) {
                if (matches(it3.next(), browser)) {
                    String str2 = "Browser's package name: " + browser.getPackageName() + " version: " + browser.getVersion();
                    int i3 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AndroidBrowserSelector:getDefaultBrowser", str2);
                    break loop1;
                }
            }
        }
        if (browser != null) {
            return browser;
        }
        com.microsoft.identity.common.java.logging.Logger.warn("AndroidBrowserSelector:select", "No available browser installed on the device.");
        return null;
    }
}
