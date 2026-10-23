.class public Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 2

    .line 1
    const-class p0, Laz1;

    .line 2
    .line 3
    invoke-static {p0}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "fire-cls-ndk"

    .line 8
    .line 9
    iput-object v0, p0, Ltn1;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-class v1, Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Ltn1;->a(Lji2;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/google/firebase/crashlytics/ndk/a;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Ltn1;->f:Lmo1;

    .line 26
    .line 27
    invoke-virtual {p0}, Ltn1;->c()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ltn1;->b()Lun1;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v1, "20.0.6"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    filled-new-array {p0, v0}, [Lun1;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
