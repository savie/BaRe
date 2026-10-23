.class public final Ldz8;
.super Ll5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final y:Ljava/nio/charset/Charset;


# instance fields
.field public t:Ljava/nio/channels/FileChannel;

.field public x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    sput-object v0, Ldz8;->y:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final K()Lhz8;
    .locals 6

    .line 1
    iget-object v1, p0, Ldz8;->t:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    if-eqz v1, :cond_1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, p0, Ldz8;->t:Ljava/nio/channels/FileChannel;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :goto_0
    move v5, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    new-instance v0, Lhz8;

    .line 23
    .line 24
    iget-object v3, p0, Ll5;->n:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    iget-boolean v4, p0, Ldz8;->x:Z

    .line 27
    .line 28
    invoke-direct/range {v0 .. v5}, Lhz8;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZ)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    iget-object v0, p0, Ll5;->k:Ly4;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Ll5;->q:[Ljava/nio/file/OpenOption;

    .line 38
    .line 39
    array-length v0, v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Ll5;->I()Ljava/nio/file/Path;

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_3
    const-string p0, "origin == null"

    .line 49
    .line 50
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v1
.end method
