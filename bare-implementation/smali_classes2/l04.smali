.class public final Ll04;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:Lae1;

.field public final d:Lox;

.field public final e:Lnu3;

.field public f:J


# direct methods
.method public constructor <init>(JILoh1;Lou3;Lrk;Lae1;Lrx;Lox;Lnu3;Ldk;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ll04;->a:J

    .line 5
    .line 6
    iput p3, p0, Ll04;->b:I

    .line 7
    .line 8
    iput-object p7, p0, Ll04;->c:Lae1;

    .line 9
    .line 10
    iput-object p9, p0, Ll04;->d:Lox;

    .line 11
    .line 12
    iput-object p10, p0, Ll04;->e:Lnu3;

    .line 13
    .line 14
    const-wide/16 p1, -0x1

    .line 15
    .line 16
    iput-wide p1, p0, Ll04;->f:J

    .line 17
    .line 18
    return-void
.end method

.method public static a(Ljava/lang/Exception;Ljava/lang/Exception;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eq p1, p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    if-ne v3, p1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p0, p1}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 6

    .line 1
    const-wide/16 v2, 0x0

    .line 2
    .line 3
    iget-wide v4, p0, Ll04;->a:J

    .line 4
    .line 5
    move-wide v0, p1

    .line 6
    invoke-static/range {v0 .. v5}, Ll73;->i(JJJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iget-wide v0, p0, Ll04;->f:J

    .line 11
    .line 12
    cmp-long v0, p1, v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-wide p1, p0, Ll04;->f:J

    .line 17
    .line 18
    iget-object p0, p0, Ll04;->e:Lnu3;

    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lnu3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Exception;I)Z
    .locals 1

    .line 1
    iget v0, p0, Ll04;->b:I

    .line 2
    .line 3
    if-ge p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll04;->d:Lox;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lox;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final d(JJJLjava/lang/String;)V
    .locals 4

    .line 1
    cmp-long v0, p1, p3

    .line 2
    .line 3
    iget-wide v1, p0, Ll04;->a:J

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    cmp-long p0, p1, p5

    .line 8
    .line 9
    if-gtz p0, :cond_0

    .line 10
    .line 11
    cmp-long p0, p1, v1

    .line 12
    .line 13
    if-gtz p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 17
    .line 18
    const-string v0, "Google Drive "

    .line 19
    .line 20
    const-string v3, " response acknowledged invalid next byte "

    .line 21
    .line 22
    invoke-static {v0, p7, p1, p2, v3}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "; expected "

    .line 27
    .line 28
    const-string p7, ".."

    .line 29
    .line 30
    invoke-static {p1, p2, p3, p4, p7}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p2, " of "

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method
