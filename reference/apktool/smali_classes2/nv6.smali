.class public final Lnv6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lkv6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnv6$b;
    }
.end annotation


# static fields
.field public static final Companion:Lnv6$b;


# instance fields
.field private final __db:Leo6;

.field private final __insertAdapterOfSMessage:Lhx2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhx2;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnv6$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnv6$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lnv6;->Companion:Lnv6$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Leo6;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnv6;->__db:Leo6;

    .line 8
    .line 9
    new-instance p1, Lnv6$a;

    .line 10
    .line 11
    invoke-direct {p1}, Lnv6$a;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lnv6;->__insertAdapterOfSMessage:Lhx2;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(JLfw6;)I
    .locals 1

    .line 1
    const-string v0, "DELETE FROM smessage WHERE time < ?"

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lnv6;->deleteOlderThan$lambda$0(Ljava/lang/String;JLfw6;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static synthetic b(Lfw6;)Lbe8;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM smessage"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lnv6;->deleteAll$lambda$0(Ljava/lang/String;Lfw6;)Lbe8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic c(Lfw6;)I
    .locals 1

    .line 1
    const-string v0, "SELECT COUNT(*) FROM smessage"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lnv6;->count$lambda$0(Ljava/lang/String;Lfw6;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static final count$lambda$0(Ljava/lang/String;Lfw6;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :try_start_0
    invoke-interface {p0}, Lnw6;->i0()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0, v0}, Lnw6;->getLong(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    long-to-int v0, v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 24
    .line 25
    .line 26
    return v0

    .line 27
    :goto_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public static synthetic d(ILfw6;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "SELECT * FROM (SELECT * FROM smessage ORDER BY id DESC LIMIT ?) ORDER BY id ASC"

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lnv6;->loadLatestMessages$lambda$0(Ljava/lang/String;ILfw6;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static final deleteAll$lambda$0(Ljava/lang/String;Lfw6;)Lbe8;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :try_start_0
    invoke-interface {p0}, Lnw6;->i0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lbe8;->a:Lbe8;

    .line 15
    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method private static final deleteOlderThan$lambda$0(Ljava/lang/String;JLfw6;)I
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v0, 0x1

    .line 9
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Lnw6;->e(IJ)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Lnw6;->i0()Z

    .line 13
    .line 14
    .line 15
    invoke-static {p3}, Lsz8;->B(Lfw6;)I

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 20
    .line 21
    .line 22
    return p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public static synthetic e(Lnv6;Ljv6;Lfw6;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lnv6;->put$lambda$0(Lnv6;Ljv6;Lfw6;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(JLfw6;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "SELECT * FROM smessage WHERE time > ?"

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lnv6;->loadMessagesAfterTime$lambda$0(Ljava/lang/String;JLfw6;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static final loadLatestMessages$lambda$0(Ljava/lang/String;ILfw6;)Ljava/util/List;
    .locals 13

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 p2, 0x1

    .line 9
    int-to-long v0, p1

    .line 10
    :try_start_0
    invoke-interface {p0, p2, v0, v1}, Lnw6;->e(IJ)V

    .line 11
    .line 12
    .line 13
    const-string p1, "time"

    .line 14
    .line 15
    invoke-static {p0, p1}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const-string p2, "messageType"

    .line 20
    .line 21
    invoke-static {p0, p2}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const-string v0, "title"

    .line 26
    .line 27
    invoke-static {p0, v0}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const-string v1, "msg"

    .line 32
    .line 33
    invoke-static {p0, v1}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "color"

    .line 38
    .line 39
    invoke-static {p0, v2}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const-string v3, "id"

    .line 44
    .line 45
    invoke-static {p0, v3}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-interface {p0}, Lnw6;->i0()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    invoke-interface {p0, p1}, Lnw6;->getLong(I)J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    invoke-interface {p0, p2}, Lnw6;->getLong(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    long-to-int v9, v5

    .line 69
    invoke-interface {p0, v0}, Lnw6;->R(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-interface {p0, v1}, Lnw6;->R(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-interface {p0, v2}, Lnw6;->isNull(I)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_0

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    :goto_1
    move-object v12, v5

    .line 85
    goto :goto_2

    .line 86
    :cond_0
    invoke-interface {p0, v2}, Lnw6;->R(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    goto :goto_1

    .line 91
    :goto_2
    new-instance v6, Ljv6;

    .line 92
    .line 93
    invoke-direct/range {v6 .. v12}, Ljv6;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p0, v3}, Lnw6;->getLong(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    invoke-virtual {v6, v7, v8}, Ljv6;->setId(J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    move-object p1, v0

    .line 109
    goto :goto_3

    .line 110
    :cond_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 111
    .line 112
    .line 113
    return-object v4

    .line 114
    :goto_3
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method private static final loadMessagesAfterTime$lambda$0(Ljava/lang/String;JLfw6;)Ljava/util/List;
    .locals 12

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 p3, 0x1

    .line 9
    :try_start_0
    invoke-interface {p0, p3, p1, p2}, Lnw6;->e(IJ)V

    .line 10
    .line 11
    .line 12
    const-string p1, "time"

    .line 13
    .line 14
    invoke-static {p0, p1}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const-string p2, "messageType"

    .line 19
    .line 20
    invoke-static {p0, p2}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const-string p3, "title"

    .line 25
    .line 26
    invoke-static {p0, p3}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    const-string v0, "msg"

    .line 31
    .line 32
    invoke-static {p0, v0}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const-string v1, "color"

    .line 37
    .line 38
    invoke-static {p0, v1}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-string v2, "id"

    .line 43
    .line 44
    invoke-static {p0, v2}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-interface {p0}, Lnw6;->i0()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-interface {p0, p1}, Lnw6;->getLong(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    invoke-interface {p0, p2}, Lnw6;->getLong(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    long-to-int v8, v4

    .line 68
    invoke-interface {p0, p3}, Lnw6;->R(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-interface {p0, v0}, Lnw6;->R(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-interface {p0, v1}, Lnw6;->isNull(I)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_0

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    :goto_1
    move-object v11, v4

    .line 84
    goto :goto_2

    .line 85
    :cond_0
    invoke-interface {p0, v1}, Lnw6;->R(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    goto :goto_1

    .line 90
    :goto_2
    new-instance v5, Ljv6;

    .line 91
    .line 92
    invoke-direct/range {v5 .. v11}, Ljv6;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p0, v2}, Lnw6;->getLong(I)J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    invoke-virtual {v5, v6, v7}, Ljv6;->setId(J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    move-object p1, v0

    .line 108
    goto :goto_3

    .line 109
    :cond_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 110
    .line 111
    .line 112
    return-object v3

    .line 113
    :goto_3
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 114
    .line 115
    .line 116
    throw p1
.end method

.method private static final put$lambda$0(Lnv6;Ljv6;Lfw6;)Lbe8;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnv6;->__insertAdapterOfSMessage:Lhx2;

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lhx2;->insert(Lfw6;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public count()I
    .locals 3

    .line 1
    iget-object p0, p0, Lnv6;->__db:Leo6;

    .line 2
    .line 3
    new-instance v0, Lgf1;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-direct {v0, v1}, Lgf1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p0, v1, v2, v0}, Lg67;->z(Leo6;ZZLmt3;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public deleteAll()V
    .locals 3

    .line 1
    iget-object p0, p0, Lnv6;->__db:Leo6;

    .line 2
    .line 3
    new-instance v0, Lzi1;

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    invoke-direct {v0, v1}, Lzi1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {p0, v1, v2, v0}, Lg67;->z(Leo6;ZZLmt3;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public deleteOlderThan(J)I
    .locals 1

    .line 1
    iget-object p0, p0, Lnv6;->__db:Leo6;

    .line 2
    .line 3
    new-instance v0, Llv6;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Llv6;-><init>(J)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-static {p0, p1, p2, v0}, Lg67;->z(Leo6;ZZLmt3;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public loadLatestMessages(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljv6;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnv6;->__db:Leo6;

    .line 2
    .line 3
    new-instance v0, Lmv6;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lmv6;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, p1, v1, v0}, Lg67;->z(Leo6;ZZLmt3;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/List;

    .line 15
    .line 16
    return-object p0
.end method

.method public loadMessagesAfterTime(J)Lzy4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lzy4;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnv6;->__db:Leo6;

    .line 2
    .line 3
    invoke-virtual {p0}, Leo6;->d()Lkg4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "smessage"

    .line 8
    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lt34;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v2, p1, p2}, Lt34;-><init>(IJ)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lkg4;->b:Lmb8;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lmb8;->f([Ljava/lang/String;)Lpw5;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lkg4;->g:Lh80;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljo6;

    .line 30
    .line 31
    iget-object p2, p0, Lh80;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p2, Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 34
    .line 35
    invoke-direct {p1, p2, p0, v0, v1}, Ljo6;-><init>(Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;Lh80;[Ljava/lang/String;Lt34;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public put(Ljv6;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnv6;->__db:Leo6;

    .line 5
    .line 6
    new-instance v1, Lev;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, v2, p0, p1}, Lev;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-static {v0, p0, p1, v1}, Lg67;->z(Leo6;ZZLmt3;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method
