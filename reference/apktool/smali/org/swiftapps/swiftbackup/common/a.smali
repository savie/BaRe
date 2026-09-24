.class public final synthetic Lorg/swiftapps/swiftbackup/common/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Lt14;

    .line 2
    .line 3
    invoke-direct {p0}, Lt14;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/swiftapps/swiftbackup/common/GsonHelper$UriAdapter;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/common/GsonHelper$UriAdapter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-class v1, Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lv14;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    filled-new-array {v0}, [Lv14;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    aget-object v0, v0, v1

    .line 27
    .line 28
    iget-object v1, p0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/gson/internal/Excluder;->a()Lcom/google/gson/internal/Excluder;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v4, v1, Lcom/google/gson/internal/Excluder;->b:Ljava/util/List;

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    iput-object v3, v2, Lcom/google/gson/internal/Excluder;->b:Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/google/gson/internal/Excluder;->c:Ljava/util/List;

    .line 49
    .line 50
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    iput-object v3, v2, Lcom/google/gson/internal/Excluder;->c:Ljava/util/List;

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 59
    .line 60
    new-instance v0, Lcom/google/gson/a;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method
