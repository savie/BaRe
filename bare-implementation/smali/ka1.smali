.class public final Lka1;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lka1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lka1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lka1;->a:Lka1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 0

    .line 18
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 1
    sget p0, Ln84;->a:I

    .line 2
    .line 3
    const-string p0, "byte array"

    .line 4
    .line 5
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    array-length p0, p1

    .line 9
    invoke-static {p2, p3, p0}, Ln84;->a(III)V

    .line 10
    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    return p0
.end method
