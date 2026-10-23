.class public final synthetic Lir4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lji;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lji;Ljava/util/Set;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lir4;->a:Lji;

    .line 5
    .line 6
    iput-object p2, p0, Lir4;->b:Ljava/util/Set;

    .line 7
    .line 8
    iput-boolean p3, p0, Lir4;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Llr4;->a:Llr4;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    iget-object v1, p0, Lir4;->b:Ljava/util/Set;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lpw5;

    .line 15
    .line 16
    iget-object v2, p0, Lir4;->a:Lji;

    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Llr4;->k(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    iget-boolean p0, p0, Lir4;->c:Z

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 59
    .line 60
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    sput-object p0, Llr4;->h:Ljava/util/Set;

    .line 75
    .line 76
    :cond_3
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 77
    .line 78
    return-object p0
.end method
