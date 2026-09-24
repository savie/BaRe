.class public final Lhx4;
.super Lg3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lbx4;

.field public final b:I

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbx4;

    .line 5
    .line 6
    invoke-direct {v0}, Lon5;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhx4;->a:Lbx4;

    .line 10
    .line 11
    iput p1, p0, Lhx4;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Lws0;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lhx4;->c:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lhx4;->a:Lbx4;

    .line 6
    .line 7
    iget-object p0, p0, Lon5;->a:Lon5;

    .line 8
    .line 9
    check-cast p0, Lws0;

    .line 10
    .line 11
    instance-of p1, p0, Llw4;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    check-cast p0, Llw4;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Llw4;->f:Z

    .line 19
    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final e()Lws0;
    .locals 0

    .line 1
    iget-object p0, p0, Lhx4;->a:Lbx4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final h(Lun2;)Lys0;
    .locals 3

    .line 1
    iget-boolean v0, p1, Lun2;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lhx4;->a:Lbx4;

    .line 7
    .line 8
    iget-object v0, v0, Lon5;->b:Lon5;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lun2;->h()Lg3;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lg3;->e()Lws0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v2, v0, Lrw5;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    instance-of v0, v0, Lbx4;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :cond_1
    const/4 v1, 0x1

    .line 30
    :cond_2
    iput-boolean v1, p0, Lhx4;->c:Z

    .line 31
    .line 32
    iget p0, p1, Lun2;->e:I

    .line 33
    .line 34
    invoke-static {p0}, Lys0;->a(I)Lys0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_3
    iget v0, p1, Lun2;->g:I

    .line 40
    .line 41
    iget p0, p0, Lhx4;->b:I

    .line 42
    .line 43
    if-lt v0, p0, :cond_4

    .line 44
    .line 45
    iget p1, p1, Lun2;->c:I

    .line 46
    .line 47
    add-int/2addr p1, p0

    .line 48
    new-instance p0, Lys0;

    .line 49
    .line 50
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0, v0, p1, v1}, Lys0;-><init>(IIZ)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method
