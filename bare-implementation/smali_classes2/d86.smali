.class public final Ld86;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:J

.field public final c:Lqt3;

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLqt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld86;->a:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-wide p2, p0, Ld86;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Ld86;->c:Lqt3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    .line 1
    iget-wide v0, p0, Ld86;->d:J

    .line 2
    .line 3
    int-to-long v2, p1

    .line 4
    add-long/2addr v2, v0

    .line 5
    iput-wide v2, p0, Ld86;->d:J

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-wide v4, p0, Ld86;->e:J

    .line 12
    .line 13
    sub-long v4, v2, v4

    .line 14
    .line 15
    const-wide/16 v6, 0x7d0

    .line 16
    .line 17
    cmp-long p1, v4, v6

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    .line 21
    iput-wide v2, p0, Ld86;->e:J

    .line 22
    .line 23
    iget-wide v2, p0, Ld86;->b:J

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Ld86;->c:Lqt3;

    .line 38
    .line 39
    invoke-interface {p0, v0, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Ld86;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read()I
    .locals 2

    .line 14
    iget-object v0, p0, Ld86;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v1}, Ld86;->a(I)V

    return v0
.end method

.method public final read([BII)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld86;->a:Ljava/io/InputStream;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Ld86;->a(I)V

    .line 11
    .line 12
    .line 13
    return p1
.end method
