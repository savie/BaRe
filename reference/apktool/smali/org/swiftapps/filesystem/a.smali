.class public final Lorg/swiftapps/filesystem/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final a(Ljava/nio/channels/FileChannel;J[BII)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_3

    .line 6
    .line 7
    if-ltz p4, :cond_2

    .line 8
    .line 9
    if-ltz p5, :cond_2

    .line 10
    .line 11
    add-int v0, p4, p5

    .line 12
    .line 13
    array-length v1, p3

    .line 14
    if-gt v0, v1, :cond_2

    .line 15
    .line 16
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    :goto_0
    invoke-virtual {p3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    if-eqz p4, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p3, p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    if-lez p4, :cond_0

    .line 31
    .line 32
    int-to-long p4, p4

    .line 33
    add-long/2addr p1, p4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p0, "Unable to write random file data at offset "

    .line 36
    .line 37
    invoke-static {p1, p2, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :cond_2
    array-length p0, p3

    .line 46
    const-string p1, ", len="

    .line 47
    .line 48
    const-string p2, ", size="

    .line 49
    .line 50
    const-string p3, "Invalid buffer range: off="

    .line 51
    .line 52
    invoke-static {p3, p4, p1, p2, p5}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lb6;->b(ILjava/lang/StringBuilder;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    const-string p0, "offset < 0"

    .line 61
    .line 62
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
