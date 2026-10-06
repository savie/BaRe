package defpackage;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jp7 extends h60 {
    public static final UriMatcher e;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        e = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    @Override // defpackage.ra2
    public final Class a() {
        return InputStream.class;
    }

    @Override // defpackage.h60
    public final void g(Object obj) throws IOException {
        ((InputStream) obj).close();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0019  */
    /* JADX WARN: Code duplicated, block: B:12:0x001f  */
    /* JADX WARN: Code duplicated, block: B:17:0x002d  */
    @Override // defpackage.h60
    public final Object h(ContentResolver contentResolver, Uri uri) throws FileNotFoundException {
        Uri uriLookupContact;
        InputStream inputStreamOpenContactPhotoInputStream;
        int iMatch = e.match(uri);
        if (iMatch == 1) {
            uriLookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
            if (uriLookupContact != null) {
                throw new FileNotFoundException("Contact cannot be found");
            }
            inputStreamOpenContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uriLookupContact, true);
        } else if (iMatch == 3) {
            inputStreamOpenContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
        } else if (iMatch != 5) {
            inputStreamOpenContactPhotoInputStream = contentResolver.openInputStream(uri);
        } else {
            uriLookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
            if (uriLookupContact != null) {
                throw new FileNotFoundException("Contact cannot be found");
            }
            inputStreamOpenContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uriLookupContact, true);
        }
        if (inputStreamOpenContactPhotoInputStream != null) {
            return inputStreamOpenContactPhotoInputStream;
        }
        m0.l(uri, "InputStream is null for ");
        return null;
    }
}
