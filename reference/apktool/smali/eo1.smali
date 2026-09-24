.class public final synthetic Leo1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lgo1;ILi9;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Leo1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Leo1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Leo1;->b:I

    .line 10
    .line 11
    iput-object p3, p0, Leo1;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Liq6;Landroid/content/ComponentName;I)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Leo1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leo1;->c:Ljava/lang/Object;

    iput-object p2, p0, Leo1;->d:Ljava/lang/Object;

    iput p3, p0, Leo1;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Leo1;->a:I

    .line 2
    .line 3
    iget v1, p0, Leo1;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Leo1;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Leo1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Liq6;

    .line 13
    .line 14
    check-cast v2, Landroid/content/ComponentName;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    invoke-virtual {p0, v0, v2}, Liq6;->j(ILandroid/content/ComponentName;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Liq6;->f(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    check-cast p0, Lgo1;

    .line 28
    .line 29
    check-cast v2, Li9;

    .line 30
    .line 31
    iget-object v0, v2, Li9;->a:Ljava/io/Serializable;

    .line 32
    .line 33
    iget-object v2, p0, Lgo1;->a:Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object v2, p0, Lgo1;->e:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lr9;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    iget-object v3, v2, Lr9;->a:Lh9;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v3, 0x0

    .line 62
    :goto_0
    if-nez v3, :cond_2

    .line 63
    .line 64
    iget-object v2, p0, Lgo1;->g:Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lgo1;->f:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object v2, v2, Lr9;->a:Lh9;

    .line 76
    .line 77
    iget-object p0, p0, Lgo1;->d:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    invoke-interface {v2, v0}, Lh9;->h(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_1
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
