.class public final Ljd5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgd5;


# static fields
.field public static final b:Lhd5;


# instance fields
.field public a:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhd5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhd5;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ljd5;->b:Lhd5;

    .line 8
    .line 9
    new-instance v0, Lid5;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lid5;-><init>(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a([B)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljd5;->b:Lhd5;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Ljd5;->a:Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final b()Lut1;
    .locals 1

    .line 1
    new-instance v0, Lut1;

    .line 2
    .line 3
    iget-object p0, p0, Ljd5;->a:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p0, v0, Lut1;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method
