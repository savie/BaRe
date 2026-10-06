package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b38 implements ra2 {
    public final Uri a;
    public final e38 b;
    public InputStream c;

    public b38(Uri uri, e38 e38Var) {
        this.a = uri;
        this.b = e38Var;
    }

    public static b38 b(Context context, Uri uri, c38 c38Var) {
        return new b38(uri, new e38(a.a(context).c.a().e(), c38Var, a.a(context).d, context.getContentResolver()));
    }

    @Override // defpackage.ra2
    public final Class a() {
        return InputStream.class;
    }

    @Override // defpackage.ra2
    public final void c() {
        InputStream inputStream = this.c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) throws Throwable {
        try {
            InputStream inputStreamF = f();
            this.c = inputStreamF;
            qa2Var.f(inputStreamF);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e);
            }
            qa2Var.b(e);
        }
    }

    @Override // defpackage.ra2
    public final int e() {
        return 1;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f A[PHI: r6
      0x002f: PHI (r6v7 android.database.Cursor) = (r6v3 android.database.Cursor), (r6v10 android.database.Cursor) binds: [B:26:0x0052, B:14:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:25:0x0043 A[Catch: all -> 0x0027, TRY_LEAVE, TryCatch #4 {all -> 0x0027, blocks: (B:6:0x0018, B:8:0x001e, B:23:0x003d, B:25:0x0043), top: B:77:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:30:0x005b  */
    /* JADX WARN: Code duplicated, block: B:31:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0068  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00df  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:84:0x00b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:25:0x0043, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x0028: MOVE (r5 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]) (LINE:41), block:B:11:0x0028 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.NullPointerException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v0 */
    public final InputStream f() throws Throwable {
        ?? r6;
        SecurityException e;
        Cursor cursorU;
        String string;
        File file;
        InputStream inputStreamOpenInputStream;
        int iQ;
        e38 e38Var = this.b;
        ContentResolver contentResolver = (ContentResolver) e38Var.d;
        Uri uri = this.a;
        ?? r5 = 0;
        InputStream inputStreamOpenInputStream2 = null;
        try {
            try {
                try {
                    try {
                        cursorU = ((c38) e38Var.b).u(uri);
                        if (cursorU != null) {
                            try {
                                if (cursorU.moveToFirst()) {
                                    string = cursorU.getString(0);
                                    cursorU.close();
                                }
                            } catch (SecurityException e2) {
                                e = e2;
                                if (Log.isLoggable("ThumbStreamOpener", 3)) {
                                    Log.d("ThumbStreamOpener", "Failed to query for thumbnail for Uri: " + uri, e);
                                }
                                if (cursorU != null) {
                                }
                                string = null;
                                if (TextUtils.isEmpty(string)) {
                                    inputStreamOpenInputStream = null;
                                } else {
                                    file = new File(string);
                                    if (file.exists()) {
                                        inputStreamOpenInputStream = null;
                                    } else {
                                        inputStreamOpenInputStream = null;
                                    }
                                }
                                if (inputStreamOpenInputStream != null) {
                                    try {
                                        try {
                                            inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                                            iQ = pe4.q((ArrayList) e38Var.e, inputStreamOpenInputStream2, (m35) e38Var.c);
                                            if (inputStreamOpenInputStream2 != null) {
                                                try {
                                                    inputStreamOpenInputStream2.close();
                                                } catch (IOException unused) {
                                                }
                                            }
                                        } catch (Throwable th) {
                                            if (0 != 0) {
                                                try {
                                                    r5.close();
                                                } catch (IOException unused2) {
                                                }
                                            }
                                            throw th;
                                        }
                                    } catch (IOException | NullPointerException e3) {
                                        if (Log.isLoggable("ThumbStreamOpener", 3)) {
                                            Log.d("ThumbStreamOpener", "Failed to open uri: " + uri, e3);
                                        }
                                        if (inputStreamOpenInputStream2 != null) {
                                            try {
                                                inputStreamOpenInputStream2.close();
                                            } catch (IOException unused3) {
                                            }
                                        }
                                        iQ = -1;
                                    }
                                } else {
                                    iQ = -1;
                                }
                                if (iQ != -1) {
                                    return new g03(inputStreamOpenInputStream, iQ);
                                }
                                return inputStreamOpenInputStream;
                            }
                            if (TextUtils.isEmpty(string)) {
                                inputStreamOpenInputStream = null;
                            } else {
                                file = new File(string);
                                if (file.exists() || 0 >= file.length()) {
                                    inputStreamOpenInputStream = null;
                                } else {
                                    Uri uriFromFile = Uri.fromFile(file);
                                    try {
                                        inputStreamOpenInputStream = contentResolver.openInputStream(uriFromFile);
                                    } catch (NullPointerException e4) {
                                        throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + uriFromFile).initCause(e4));
                                    }
                                }
                            }
                            if (inputStreamOpenInputStream != null) {
                                inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                                iQ = pe4.q((ArrayList) e38Var.e, inputStreamOpenInputStream2, (m35) e38Var.c);
                                if (inputStreamOpenInputStream2 != null) {
                                    inputStreamOpenInputStream2.close();
                                }
                            } else {
                                iQ = -1;
                            }
                            if (iQ != -1) {
                                return new g03(inputStreamOpenInputStream, iQ);
                            }
                            return inputStreamOpenInputStream;
                        }
                        if (cursorU != null) {
                            cursorU.close();
                        }
                    } catch (SecurityException e5) {
                        e = e5;
                        cursorU = null;
                        if (Log.isLoggable("ThumbStreamOpener", 3)) {
                            Log.d("ThumbStreamOpener", "Failed to query for thumbnail for Uri: " + uri, e);
                        }
                        if (cursorU != null) {
                            cursorU.close();
                        }
                        string = null;
                        if (TextUtils.isEmpty(string)) {
                            inputStreamOpenInputStream = null;
                        } else {
                            file = new File(string);
                            if (file.exists()) {
                                inputStreamOpenInputStream = null;
                            } else {
                                inputStreamOpenInputStream = null;
                            }
                        }
                        if (inputStreamOpenInputStream != null) {
                            inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                            iQ = pe4.q((ArrayList) e38Var.e, inputStreamOpenInputStream2, (m35) e38Var.c);
                            if (inputStreamOpenInputStream2 != null) {
                                inputStreamOpenInputStream2.close();
                            }
                        } else {
                            iQ = -1;
                        }
                        if (iQ != -1) {
                            return new g03(inputStreamOpenInputStream, iQ);
                        }
                        return inputStreamOpenInputStream;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (r5 != 0) {
                        r5.close();
                    }
                    throw th;
                }
            } catch (SecurityException e6) {
                e = e6;
            }
            string = null;
            if (TextUtils.isEmpty(string)) {
                inputStreamOpenInputStream = null;
            } else {
                file = new File(string);
                if (file.exists()) {
                    inputStreamOpenInputStream = null;
                } else {
                    inputStreamOpenInputStream = null;
                }
            }
            if (inputStreamOpenInputStream != null) {
                inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                iQ = pe4.q((ArrayList) e38Var.e, inputStreamOpenInputStream2, (m35) e38Var.c);
                if (inputStreamOpenInputStream2 != null) {
                    inputStreamOpenInputStream2.close();
                }
            } else {
                iQ = -1;
            }
            if (iQ != -1) {
                return new g03(inputStreamOpenInputStream, iQ);
            }
            return inputStreamOpenInputStream;
        } catch (Throwable th3) {
            th = th3;
            r5 = r6;
        }
    }

    @Override // defpackage.ra2
    public final void cancel() {
    }
}
