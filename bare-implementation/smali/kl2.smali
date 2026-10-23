.class public final Lkl2;
.super Ljava/lang/Object;

# interfaces
.implements Lhl2;


# instance fields
.field public final a:Ljx6;

.field public final b:I


# direct methods
.method public constructor <init>(Ljx6;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkl2;->a:Ljx6;

    .line 5
    .line 6
    iput p2, p0, Lkl2;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkl2;->a:Ljx6;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lhl2;->a(B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    iget p0, p0, Lkl2;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final doFinal([BI)I
    .locals 3

    .line 1
    iget-object v0, p0, Lkl2;->a:Ljx6;

    .line 2
    .line 3
    invoke-interface {v0}, Lhl2;->c()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Lhl2;->doFinal([BI)I

    .line 11
    .line 12
    .line 13
    iget p0, p0, Lkl2;->b:I

    .line 14
    .line 15
    invoke-static {v1, v2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkl2;->a:Ljx6;

    .line 7
    .line 8
    invoke-interface {v1}, Lhl2;->f()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "/"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget p0, p0, Lkl2;->b:I

    .line 21
    .line 22
    mul-int/lit8 p0, p0, 0x8

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Lkl2;->a:Ljx6;

    .line 2
    .line 3
    invoke-interface {p0}, Lhl2;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final update([BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkl2;->a:Ljx6;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lhl2;->update([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
