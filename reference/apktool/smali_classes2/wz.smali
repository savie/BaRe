.class public final synthetic Lwz;
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
    iput-object p1, p0, Lwz;->a:La00;

    .line 5
    .line 6
    iput-object p2, p0, Lwz;->b:Lgz;

    .line 7
    .line 8
    iput-object p3, p0, Lwz;->c:Lrf8;

    .line 9
    .line 10
    iput-object p4, p0, Lwz;->d:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 11
    .line 12
    iput-object p5, p0, Lwz;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    iput-object p6, p0, Lwz;->f:Lkh6;

    .line 15
    .line 16
    iput-wide p7, p0, Lwz;->k:J

    .line 17
    .line 18
    iput-object p9, p0, Lwz;->n:Lkh6;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lwz;->a:La00;

    .line 2
    .line 3
    invoke-virtual {v0}, La00;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v8, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lwz;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    iget-object v2, p0, Lwz;->f:Lkh6;

    .line 15
    .line 16
    iget-wide v3, p0, Lwz;->k:J

    .line 17
    .line 18
    iget-object v5, p0, Lwz;->n:Lkh6;

    .line 19
    .line 20
    iget-object v6, p0, Lwz;->b:Lgz;

    .line 21
    .line 22
    iget-object v7, p0, Lwz;->c:Lrf8;

    .line 23
    .line 24
    invoke-static/range {v0 .. v7}, La00;->b(La00;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;Lgz;Lrf8;)Lzf8;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lzf8;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lzf8;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v7}, Lrf8;->a()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object p0, p0, Lwz;->d:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateSpecialDataDetails(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-object v8
.end method
