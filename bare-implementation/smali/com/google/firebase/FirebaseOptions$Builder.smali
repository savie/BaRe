.class public final Lcom/google/firebase/FirebaseOptions$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/FirebaseOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private apiKey:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private databaseUrl:Ljava/lang/String;

.field private gaTrackingId:Ljava/lang/String;

.field private gcmSenderId:Ljava/lang/String;

.field private projectId:Ljava/lang/String;

.field private storageBucket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->access$000(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->applicationId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->access$100(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->apiKey:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->access$200(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->databaseUrl:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->access$300(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->gaTrackingId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->access$400(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->gcmSenderId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->access$500(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->storageBucket:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->access$600(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->projectId:Ljava/lang/String;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/FirebaseOptions;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/firebase/FirebaseOptions;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->applicationId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions$Builder;->apiKey:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/firebase/FirebaseOptions$Builder;->databaseUrl:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/firebase/FirebaseOptions$Builder;->gaTrackingId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/firebase/FirebaseOptions$Builder;->gcmSenderId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/google/firebase/FirebaseOptions$Builder;->storageBucket:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/google/firebase/FirebaseOptions$Builder;->projectId:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lug3;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 1

    .line 1
    const-string v0, "ApiKey must be set."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->apiKey:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 1

    .line 1
    const-string v0, "ApplicationId must be set."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->applicationId:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->databaseUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGaTrackingId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->gaTrackingId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->gcmSenderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->projectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->storageBucket:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
