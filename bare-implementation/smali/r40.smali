.class public final Lr40;
.super Lha4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lq40;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lq40;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lr40;->b:Ljava/util/Comparator;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    array-length v2, v0

    .line 40
    if-ge v1, v2, :cond_2

    .line 41
    .line 42
    aget-object v2, v0, v1

    .line 43
    .line 44
    check-cast v2, Lzd4;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iget-object v2, v2, Lzd4;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    aput-object v2, v0, v1

    .line 58
    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance v1, Lr40;

    .line 63
    .line 64
    sget-object v2, Lr40;->b:Ljava/util/Comparator;

    .line 65
    .line 66
    invoke-direct {v1, v0, v2}, Lha4;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
