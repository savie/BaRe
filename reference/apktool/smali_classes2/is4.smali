.class public final Lis4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:D

.field public final e:Lxi6;

.field public final f:Lgv7;

.field public final k:Lgv7;

.field public final n:Lgv7;

.field public final p:Lgv7;

.field public final q:Lgv7;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    :goto_0
    move v3, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x1

    goto :goto_0

    :goto_1
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 89
    sget-object v6, Lxi6;->Production:Lxi6;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 90
    invoke-direct/range {v0 .. v6}, Lis4;-><init>(Ljava/lang/String;Ljava/lang/String;ZDLxi6;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZDLxi6;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lis4;->a:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Lis4;->b:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean p3, p0, Lis4;->c:Z

    .line 18
    .line 19
    iput-wide p4, p0, Lis4;->d:D

    .line 20
    .line 21
    iput-object p6, p0, Lis4;->e:Lxi6;

    .line 22
    .line 23
    new-instance p1, Las4;

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-direct {p1, p0, p2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    new-instance p2, Lgv7;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lis4;->f:Lgv7;

    .line 35
    .line 36
    new-instance p1, Lpr4;

    .line 37
    .line 38
    const/4 p2, 0x2

    .line 39
    invoke-direct {p1, p0, p2}, Lpr4;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lgv7;

    .line 43
    .line 44
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lis4;->k:Lgv7;

    .line 48
    .line 49
    new-instance p1, Llf;

    .line 50
    .line 51
    const/16 p2, 0x1b

    .line 52
    .line 53
    invoke-direct {p1, p0, p2}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    new-instance p3, Lgv7;

    .line 57
    .line 58
    invoke-direct {p3, p1}, Lgv7;-><init>(Lbt3;)V

    .line 59
    .line 60
    .line 61
    iput-object p3, p0, Lis4;->n:Lgv7;

    .line 62
    .line 63
    new-instance p1, Lej;

    .line 64
    .line 65
    invoke-direct {p1, p0, p2}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    new-instance p2, Lgv7;

    .line 69
    .line 70
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lis4;->p:Lgv7;

    .line 74
    .line 75
    new-instance p1, Lhs4;

    .line 76
    .line 77
    const/4 p2, 0x0

    .line 78
    invoke-direct {p1, p0, p2}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    new-instance p2, Lgv7;

    .line 82
    .line 83
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Lis4;->q:Lgv7;

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Locale;
    .locals 0

    .line 1
    iget-object p0, p0, Lis4;->f:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/util/Locale;

    .line 11
    .line 12
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lis4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lis4;

    .line 6
    .line 7
    invoke-virtual {p1}, Lis4;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lis4;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final getCopy()Ljl0;
    .locals 7

    .line 1
    iget-object v1, p0, Lis4;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lis4;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v6, p0, Lis4;->e:Lxi6;

    .line 12
    .line 13
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lis4;

    .line 17
    .line 18
    iget-boolean v3, p0, Lis4;->c:Z

    .line 19
    .line 20
    iget-wide v4, p0, Lis4;->d:D

    .line 21
    .line 22
    invoke-direct/range {v0 .. v6}, Lis4;-><init>(Ljava/lang/String;Ljava/lang/String;ZDLxi6;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lis4;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lis4;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "_"

    .line 4
    .line 5
    iget-object p0, p0, Lis4;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0, v1, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
