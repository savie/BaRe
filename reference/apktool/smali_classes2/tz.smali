.class public final synthetic Ltz;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:La00;

.field public final synthetic b:Lgz;

.field public final synthetic c:Lrf8;

.field public final synthetic d:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

.field public final synthetic e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic f:Lkh6;

.field public final synthetic k:J

.field public final synthetic n:Lkh6;


# direct methods
.method public synthetic constructor <init>(La00;Lgz;Lrf8;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltz;->a:La00;

    .line 5
    .line 6
    iput-object p2, p0, Ltz;->b:Lgz;

    .line 7
    .line 8
    iput-object p3, p0, Ltz;->c:Lrf8;

    .line 9
    .line 10
    iput-object p4, p0, Ltz;->d:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 11
    .line 12
    iput-object p5, p0, Ltz;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    iput-object p6, p0, Ltz;->f:Lkh6;

    .line 15
    .line 16
    iput-wide p7, p0, Ltz;->k:J

    .line 17
    .line 18
    iput-object p9, p0, Ltz;->n:Lkh6;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ltz;->a:La00;

    .line 4
    .line 5
    invoke-virtual {v1}, La00;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v9, v1, La00;->f:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 10
    .line 11
    sget-object v10, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, v0, Ltz;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    iget-object v3, v0, Ltz;->f:Lkh6;

    .line 19
    .line 20
    iget-wide v4, v0, Ltz;->k:J

    .line 21
    .line 22
    iget-object v6, v0, Ltz;->n:Lkh6;

    .line 23
    .line 24
    iget-object v7, v0, Ltz;->b:Lgz;

    .line 25
    .line 26
    iget-object v8, v0, Ltz;->c:Lrf8;

    .line 27
    .line 28
    invoke-static/range {v1 .. v8}, La00;->b(La00;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;Lgz;Lrf8;)Lzf8;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lzf8;->a()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v12, v1, Lzf8;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v8}, Lrf8;->a()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v13

    .line 48
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataSizeMirrored()Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted()Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v15

    .line 56
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataEncryptionMethod()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v16

    .line 60
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataPasswordHash()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v17

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v18

    .line 72
    iget-object v11, v0, Ltz;->d:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 73
    .line 74
    invoke-virtual/range {v11 .. v18}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateExtDataDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    return-object v10
.end method
