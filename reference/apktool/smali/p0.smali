.class public final Lp0;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final b:Ll15;


# instance fields
.field public final a:Lnh4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp0;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lp0;->b:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lg82;Lhw0;)V
    .locals 0

    .line 12
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 13
    iput-object p1, p0, Lp0;->a:Lnh4;

    return-void
.end method

.method public constructor <init>(Lnh4;[B)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lp0;->a:Lnh4;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g()Lz0;
    .locals 6

    .line 1
    iget-object v0, p0, Lp0;->a:Lnh4;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lnh4;->m(Lp0;)Lm2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Lp0;->b:Ll15;

    .line 11
    .line 12
    const-string v3, "Read ASN.1 tag {}"

    .line 13
    .line 14
    invoke-interface {v2, v1, v3}, Ll15;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lnh4;->l(Lp0;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const-string v4, "Read ASN.1 object length: {}"

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-interface {v2, v5, v4}, Ll15;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v3, p0}, Lnh4;->n(ILp0;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v1, v0}, Lm2;->c(Lnh4;)Lol1;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1, p0}, Lol1;->C(Lm2;[B)Lz0;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v0, "Read ASN.1 object: {}"

    .line 43
    .line 44
    invoke-interface {v2, p0, v0}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lo1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :goto_0
    new-instance v0, Lo1;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string v2, "Cannot parse ASN.1 object from stream"

    .line 58
    .line 59
    invoke-direct {v0, p0, v2, v1}, Lo1;-><init>(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :goto_1
    throw p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Ln0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Ln0;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
