.class public abstract Ll5;
.super Lg67;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final r:[Ljava/nio/file/OpenOption;


# instance fields
.field public k:Ly4;

.field public n:Ljava/nio/charset/Charset;

.field public p:Ljava/nio/charset/Charset;

.field public final q:[Ljava/nio/file/OpenOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lpy5;->a:[Ljava/nio/file/OpenOption;

    .line 2
    .line 3
    sput-object v0, Ll5;->r:[Ljava/nio/file/OpenOption;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Ll5;->n:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Ll5;->p:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    sget-object v0, Ll5;->r:[Ljava/nio/file/OpenOption;

    .line 17
    .line 18
    iput-object v0, p0, Ll5;->q:[Ljava/nio/file/OpenOption;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final I()Ljava/nio/file/Path;
    .locals 4

    .line 1
    iget-object p0, p0, Ll5;->k:Ly4;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 6
    .line 7
    const-class v1, Ly4;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Ly4;->k:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "getPath"

    .line 24
    .line 25
    filled-new-array {v1, v3, v2, p0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, "%s#%s() for %s origin %s"

    .line 30
    .line 31
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "origin == null"

    .line 42
    .line 43
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final J(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    new-instance v0, Ly4;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ly4;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Ll5;->k:Ly4;

    .line 7
    .line 8
    return-void
.end method
