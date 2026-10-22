package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "InputSerialization")
public class oc4 {

    @at2(name = "CompressionType", required = false)
    private b a;

    @at2(name = "CSV", required = false)
    private a b;

    @at2(name = "JSON", required = false)
    private d c;

    @at2(name = "Parquet", required = false)
    private f d;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "CSV")
    public static class a {

        @at2(name = "AllowQuotedRecordDelimiter", required = false)
        private boolean a;

        @at2(name = "Comments", required = false)
        private Character b;

        @at2(name = "FieldDelimiter", required = false)
        private Character c;

        @at2(name = "FileHeaderInfo", required = false)
        private c d;

        @at2(name = "QuoteCharacter", required = false)
        private Character e;

        @at2(name = "QuoteEscapeCharacter", required = false)
        private Character f;

        @at2(name = "RecordDelimiter", required = false)
        private Character g;

        public a(boolean z, Character ch, Character ch2, c cVar, Character ch3, Character ch4, Character ch5) {
            this.a = z;
            this.b = ch;
            this.c = ch2;
            this.d = cVar;
            this.e = ch3;
            this.f = ch4;
            this.g = ch5;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum b {
        /* JADX INFO: Fake field, exist only in values array */
        NONE,
        /* JADX INFO: Fake field, exist only in values array */
        GZIP,
        /* JADX INFO: Fake field, exist only in values array */
        BZIP2
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum c {
        /* JADX INFO: Fake field, exist only in values array */
        USE,
        /* JADX INFO: Fake field, exist only in values array */
        IGNORE,
        /* JADX INFO: Fake field, exist only in values array */
        NONE
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "JSON")
    public static class d {

        @at2(name = "Type", required = false)
        private e a;

        public d(e eVar) {
            this.a = eVar;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum e {
        /* JADX INFO: Fake field, exist only in values array */
        DOCUMENT,
        /* JADX INFO: Fake field, exist only in values array */
        LINES
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Parquet")
    public static class f {
    }

    private oc4(b bVar, a aVar, d dVar, f fVar) {
        this.a = bVar;
        this.b = aVar;
        this.c = dVar;
        this.d = fVar;
    }

    public static oc4 a(b bVar, boolean z, Character ch, Character ch2, c cVar, Character ch3, Character ch4, Character ch5) {
        return new oc4(bVar, new a(z, ch, ch2, cVar, ch3, ch4, ch5), null, null);
    }

    public static oc4 b(b bVar, e eVar) {
        return new oc4(bVar, null, new d(eVar), null);
    }

    public static oc4 c() {
        return new oc4(null, null, null, new f());
    }
}
