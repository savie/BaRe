.class public final synthetic Lku;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:Ljava/util/LinkedHashMap;

.field public final synthetic b:Ljava/util/LinkedHashMap;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lku;->a:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    iput-object p2, p0, Lku;->b:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    iput-boolean p3, p0, Lku;->c:Z

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
    iget-object v0, p0, Lku;->a:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

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
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lku;->b:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Ljava/lang/String;

    .line 44
    .line 45
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lku;->c:Z

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    check-cast p1, Lwa;

    .line 50
    .line 51
    const/4 p0, -0x1

    .line 52
    invoke-virtual {p1, p0}, Lwa;->f(I)Landroid/widget/Button;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    xor-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method
