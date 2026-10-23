.class public final Lsk1;
.super Lj3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lsk1;->b:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLkk1;[BI)Ljava/io/InputStream;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/zip/Inflater;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    .line 8
    .line 9
    new-instance p3, Ljava/io/SequenceInputStream;

    .line 10
    .line 11
    new-instance p4, Ljava/io/ByteArrayInputStream;

    .line 12
    .line 13
    sget-object p5, Lsk1;->b:[B

    .line 14
    .line 15
    invoke-direct {p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p3, p2, p4}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p3, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lqk1;

    .line 25
    .line 26
    invoke-direct {p2, p1, p0}, Lqk1;-><init>(Ljava/util/zip/InflaterInputStream;Ljava/util/zip/Inflater;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final b(Ljava/lang/Object;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    const/16 p0, 0x9

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj3;->e(ILjava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    new-instance p1, Ljava/util/zip/Deflater;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p1, p0, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/util/zip/DeflaterOutputStream;

    .line 14
    .line 15
    invoke-direct {p0, p2, p1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lrk1;

    .line 19
    .line 20
    invoke-direct {p2, p0, p1}, Lrk1;-><init>(Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V

    .line 21
    .line 22
    .line 23
    return-object p2
.end method
