package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "OutputSerialization")
public class gv5 {

    @at2(name = "CSV", required = false)
    private a a;

    @at2(name = "JSON", required = false)
    private b b;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "CSV")
    public static class a {

        @at2(name = "FieldDelimiter", required = false)
        private Character a;

        @at2(name = "QuoteCharacter", required = false)
        private Character b;

        @at2(name = "QuoteEscapeCharacter", required = false)
        private Character c;

        @at2(name = "QuoteFields", required = false)
        private c d;

        @at2(name = "RecordDelimiter", required = false)
        private Character e;

        public a(Character ch, Character ch2, Character ch3, c cVar, Character ch4) {
            this.a = ch;
            this.b = ch2;
            this.c = ch3;
            this.d = cVar;
            this.e = ch4;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "JSON")
    public static class b {

        @at2(name = "RecordDelimiter", required = false)
        private Character a;

        public b(Character ch) {
            this.a = ch;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum c {
        /* JADX INFO: Fake field, exist only in values array */
        ALWAYS,
        /* JADX INFO: Fake field, exist only in values array */
        ASNEEDED
    }

    private gv5(a aVar, b bVar) {
        this.a = aVar;
        this.b = bVar;
    }

    public static gv5 a(Character ch, Character ch2, Character ch3, c cVar, Character ch4) {
        return new gv5(new a(ch, ch2, ch3, cVar, ch4), null);
    }

    public static gv5 b(Character ch) {
        return new gv5(null, new b(ch));
    }
}
