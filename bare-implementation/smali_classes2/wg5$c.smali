.class public final Lwg5$c;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private isCancelled:Z

.field private final mCacheRecipientsByThread:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 5
    .line 6
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lwg5$c;->contentResolver:Landroid/content/ContentResolver;

    .line 15
    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lwg5$c;->mCacheRecipientsByThread:Ljava/util/Map;

    .line 22
    .line 23
    return-void
.end method

.method private final getAddresses(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string v1, " "

    .line 10
    .line 11
    filled-new-array {v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x6

    .line 16
    invoke-static {p1, v1, v2}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v2, v1, [Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, [Ljava/lang/String;

    .line 28
    .line 29
    array-length v2, p1

    .line 30
    move v3, v1

    .line 31
    :goto_0
    if-ge v3, v2, :cond_3

    .line 32
    .line 33
    aget-object v4, p1, v3

    .line 34
    .line 35
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    const-wide/16 v6, 0x0

    .line 40
    .line 41
    cmp-long v6, v4, v6

    .line 42
    .line 43
    if-gez v6, :cond_0

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_0
    const-string v6, "content://mms-sms/canonical-address"

    .line 47
    .line 48
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :try_start_1
    iget-object v7, p0, Lwg5$c;->contentResolver:Landroid/content/ContentResolver;

    .line 56
    .line 57
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    const/4 v11, 0x0

    .line 62
    const/4 v12, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 66
    .line 67
    .line 68
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    const/4 v4, 0x0

    .line 71
    :goto_1
    if-eqz v4, :cond_2

    .line 72
    .line 73
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_1

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    move-object p0, v0

    .line 98
    goto :goto_3

    .line 99
    :cond_1
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :catch_1
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    return-object v0
.end method

.method public static synthetic getList$default(Lwg5$c;Lmt3;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lwg5$c;->getList(Lmt3;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final getRawRecipientIdsForThread(J)Ljava/lang/String;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "simple"

    .line 16
    .line 17
    const-string v3, "true"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v0, "_id"

    .line 31
    .line 32
    const-string v2, "recipient_ids"

    .line 33
    .line 34
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-object v2, p0, Lwg5$c;->contentResolver:Landroid/content/ContentResolver;

    .line 39
    .line 40
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    filled-new-array {p0}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const/4 v7, 0x0

    .line 49
    const-string v5, "_id=?"

    .line 50
    .line 51
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move-object p1, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :goto_0
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    move-object p2, v0

    .line 82
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p2

    .line 86
    :cond_2
    :goto_1
    return-object v1
.end method

.method private final getRecipientsByThread(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwg5$c;->mCacheRecipientsByThread:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lwg5$c;->getRawRecipientIdsForThread(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lwg5$c;->mCacheRecipientsByThread:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {p0, v0}, Lwg5$c;->getAddresses(Ljava/lang/String;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lwg5$c;->mCacheRecipientsByThread:Ljava/util/Map;

    .line 41
    .line 42
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_1
    iget-object p0, p0, Lwg5$c;->mCacheRecipientsByThread:Ljava/util/Map;

    .line 55
    .line 56
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Ljava/util/List;

    .line 65
    .line 66
    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    sget-object v1, Lwg5;->Companion:Lwg5$a;

    .line 4
    .line 5
    invoke-static {v1}, Lwg5$a;->access$getLogTag(Lwg5$a;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v2, "Loader: Cancel signal received"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lwg5$c;->isCancelled:Z

    .line 19
    .line 20
    return-void
.end method

.method public final getCancelled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lwg5$c;->isCancelled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getList(Lmt3;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmt3;",
            ")",
            "Ljava/util/List<",
            "Lwg5;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lwg5$c;->isCancelled:Z

    .line 3
    .line 4
    sget-object v1, Lwg5;->Companion:Lwg5$a;

    .line 5
    .line 6
    invoke-virtual {v1}, Lwg5$a;->getCONTENT_URI()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lwg5;

    .line 11
    .line 12
    invoke-static {v1, v2}, Lr92;->a(Landroid/net/Uri;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_4

    .line 29
    .line 30
    add-int/lit8 v4, v0, 0x1

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lwg5;

    .line 37
    .line 38
    iget-boolean v6, p0, Lwg5$c;->isCancelled:Z

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 43
    .line 44
    sget-object p1, Lwg5;->Companion:Lwg5$a;

    .line 45
    .line 46
    invoke-static {p1}, Lwg5$a;->access$getLogTag(Lwg5$a;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const-string p1, "Cancelled at read progress = "

    .line 51
    .line 52
    const-string v3, "/"

    .line 53
    .line 54
    invoke-static {p1, v0, v2, v3}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    const/4 v11, 0x4

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_0
    if-eqz p1, :cond_1

    .line 66
    .line 67
    new-instance v0, Lqv1$c;

    .line 68
    .line 69
    invoke-direct {v0, v4, v2}, Lqv1$c;-><init>(II)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {v5}, Lwg5;->getThreadId()Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    invoke-direct {p0, v6, v7}, Lwg5$c;->getRecipientsByThread(J)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const/4 v0, 0x0

    .line 91
    :goto_1
    invoke-virtual {v5, v0}, Lwg5;->setRecipients(Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lvg5;->Companion:Lvg5$a;

    .line 95
    .line 96
    invoke-virtual {v5}, Lwg5;->getId()Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v0, v6}, Lvg5$a;->getList(Ljava/lang/Long;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v5, v0}, Lwg5;->setAddressItems(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lxg5;->Companion:Lxg5$a;

    .line 108
    .line 109
    invoke-virtual {v5}, Lwg5;->getId()Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v0, v6}, Lxg5$a;->getContentUriForMms(Ljava/lang/Long;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-class v6, Lxg5;

    .line 118
    .line 119
    invoke-static {v0, v6}, Lr92;->a(Landroid/net/Uri;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v5, v0}, Lwg5;->setPartItems(Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Lwg5;->getPartItems()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_3

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    check-cast v6, Lxg5;

    .line 147
    .line 148
    invoke-static {}, Lud5;->g()Lq63;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v5}, Lwg5;->getProperFileName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v6, v7, v8}, Lxg5;->savePartFileToCache(Lq63;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    move v0, v4

    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_4
    :goto_3
    iget-boolean p0, p0, Lwg5$c;->isCancelled:Z

    .line 164
    .line 165
    if-nez p0, :cond_9

    .line 166
    .line 167
    new-instance p0, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    move-object v1, v0

    .line 187
    check-cast v1, Lwg5;

    .line 188
    .line 189
    invoke-virtual {v1}, Lwg5;->getPartItems()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-eqz v2, :cond_5

    .line 194
    .line 195
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_6

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_6
    invoke-virtual {v1}, Lwg5;->getAddressItems()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-eqz v1, :cond_5

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_7

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_8
    return-object p0

    .line 220
    :cond_9
    sget-object p0, Lov2;->a:Lov2;

    .line 221
    .line 222
    return-object p0
.end method
