.class public final Lfa4;
.super Lha4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lzk0;


# static fields
.field public static final b:Lfa4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lfa4;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v0, v2}, Lha4;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lfa4;->b:Lfa4;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getEntryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    :cond_0
    move-object p0, v0

    .line 5
    goto :goto_1

    .line 6
    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lha4;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    aget-object v3, v2, v1

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    aget-object p0, v2, v1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    check-cast p0, Lqd0;

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    iget-object p0, p0, Lqd0;->a:Ljava/lang/String;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_3
    return-object v0
.end method
