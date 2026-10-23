.class public abstract Lev2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbi2;


# instance fields
.field public final a:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-char p1, p0, Lev2;->a:C

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lr08;Lr08;I)V
    .locals 1

    .line 1
    iget-char p0, p0, Lev2;->a:C

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    if-ne p3, p0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ldv2;

    .line 10
    .line 11
    invoke-direct {p0}, Lon5;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Lar7;

    .line 16
    .line 17
    invoke-direct {p0}, Lon5;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p3, p1, Lon5;->e:Lon5;

    .line 21
    .line 22
    :goto_1
    if-eqz p3, :cond_1

    .line 23
    .line 24
    if-eq p3, p2, :cond_1

    .line 25
    .line 26
    iget-object v0, p3, Lon5;->e:Lon5;

    .line 27
    .line 28
    invoke-virtual {p0, p3}, Lon5;->b(Lon5;)V

    .line 29
    .line 30
    .line 31
    move-object p3, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0}, Lon5;->f()V

    .line 34
    .line 35
    .line 36
    iget-object p2, p1, Lon5;->e:Lon5;

    .line 37
    .line 38
    iput-object p2, p0, Lon5;->e:Lon5;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    iput-object p0, p2, Lon5;->d:Lon5;

    .line 43
    .line 44
    :cond_2
    iput-object p1, p0, Lon5;->d:Lon5;

    .line 45
    .line 46
    iput-object p0, p1, Lon5;->e:Lon5;

    .line 47
    .line 48
    iget-object p1, p1, Lon5;->a:Lon5;

    .line 49
    .line 50
    iput-object p1, p0, Lon5;->a:Lon5;

    .line 51
    .line 52
    iget-object p2, p0, Lon5;->e:Lon5;

    .line 53
    .line 54
    if-nez p2, :cond_3

    .line 55
    .line 56
    iput-object p0, p1, Lon5;->c:Lon5;

    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public final b()C
    .locals 0

    .line 1
    iget-char p0, p0, Lev2;->a:C

    .line 2
    .line 3
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final d(Lai2;Lai2;)I
    .locals 1

    .line 1
    iget-boolean p0, p1, Lai2;->d:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p2, Lai2;->c:Z

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget p0, p2, Lai2;->h:I

    .line 10
    .line 11
    rem-int/lit8 v0, p0, 0x3

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v0, p1, Lai2;->h:I

    .line 16
    .line 17
    add-int/2addr v0, p0

    .line 18
    rem-int/lit8 v0, v0, 0x3

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    iget p0, p1, Lai2;->g:I

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    if-lt p0, p1, :cond_2

    .line 28
    .line 29
    iget p0, p2, Lai2;->g:I

    .line 30
    .line 31
    if-lt p0, p1, :cond_2

    .line 32
    .line 33
    return p1

    .line 34
    :cond_2
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final e()C
    .locals 0

    .line 1
    iget-char p0, p0, Lev2;->a:C

    .line 2
    .line 3
    return p0
.end method
