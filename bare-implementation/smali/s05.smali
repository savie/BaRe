.class public final synthetic Ls05;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lsa1;

.field public final synthetic c:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lsa1;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls05;->a:Ljava/util/Map;

    .line 5
    .line 6
    iput-object p2, p0, Ls05;->b:Lsa1;

    .line 7
    .line 8
    iput-object p3, p0, Ls05;->c:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls05;->a:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p2, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    sget-object v1, Ltb1;->a:Ltb1;

    .line 41
    .line 42
    invoke-static {}, Lqb1;->m()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    const/4 p2, 0x3

    .line 49
    iget-object p0, p0, Ls05;->b:Lsa1;

    .line 50
    .line 51
    const/4 p3, 0x0

    .line 52
    invoke-static {p0, p3, p3, p2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object p0, p0, Ls05;->c:Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Ljava/lang/String;

    .line 77
    .line 78
    :cond_2
    :goto_0
    check-cast p1, Lwa;

    .line 79
    .line 80
    const/4 p2, -0x1

    .line 81
    invoke-virtual {p1, p2}, Lwa;->f(I)Landroid/widget/Button;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    xor-int/lit8 p0, p0, 0x1

    .line 90
    .line 91
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
