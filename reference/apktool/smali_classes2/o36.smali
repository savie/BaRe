.class public final synthetic Lo36;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(ZLorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lo36;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lo36;->b:Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lo36;->c:Ljava/util/Set;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    sget p1, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P:I

    .line 2
    .line 3
    iget-boolean p1, p0, Lo36;->a:Z

    .line 4
    .line 5
    iget-object v0, p0, Lo36;->b:Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    const p0, 0x7f130034

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f1303e6

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lhv1;

    .line 27
    .line 28
    const v3, 0x7f140160

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v0, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Ls35;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-direct {v4, v0, v3, v2, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v4, Lva;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lra;

    .line 43
    .line 44
    iput-object p0, v2, Lra;->f:Ljava/lang/CharSequence;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_1

    .line 53
    .line 54
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v4, v1, v5}, Lv75;->t(Ljava/lang/String;Lkb1;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    sget-object p1, Ldz5;->a:Ldz5;

    .line 69
    .line 70
    new-instance p1, Lkb;

    .line 71
    .line 72
    iget-object p0, p0, Lo36;->c:Ljava/util/Set;

    .line 73
    .line 74
    invoke-direct {p1, v0, p0}, Lkb;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    new-array v1, v1, [Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, [Ljava/lang/String;

    .line 85
    .line 86
    array-length v1, p0

    .line 87
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, [Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v0, p1, p0}, Ldz5;->a(Lzm;Lt45;[Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
