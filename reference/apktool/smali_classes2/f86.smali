.class public final Lf86;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:J

.field public final c:Lqt3;

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JLqt3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lf86;->a:Ljava/io/OutputStream;

    .line 8
    .line 9
    iput-wide p2, p0, Lf86;->b:J

    .line 10
    .line 11
    iput-object p4, p0, Lf86;->c:Lqt3;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lf86;->d:J

    .line 2
    .line 3
    int-to-long v2, p1

    .line 4
    add-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Lf86;->d:J

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lf86;->e:J

    .line 12
    .line 13
    sub-long v2, v0, v2

    .line 14
    .line 15
    const-wide/16 v4, 0x7d0

    .line 16
    .line 17
    cmp-long p1, v2, v4

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    .line 21
    iput-wide v0, p0, Lf86;->e:J

    .line 22
    .line 23
    iget-wide v0, p0, Lf86;->d:J

    .line 24
    .line 25
    iget-wide v2, p0, Lf86;->b:J

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p0, p0, Lf86;->c:Lqt3;

    .line 40
    .line 41
    invoke-interface {p0, v0, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lf86;->a:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lf86;->a:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lf86;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lf86;->a(I)V

    return-void
.end method

.method public final write([B)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf86;->a:Ljava/io/OutputStream;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    .line 8
    .line 9
    array-length p1, p1

    .line 10
    invoke-virtual {p0, p1}, Lf86;->a(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final write([BII)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v0, p0, Lf86;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    invoke-virtual {p0, p3}, Lf86;->a(I)V

    return-void
.end method
