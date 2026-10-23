.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Lnc6;

.field public final b:Lnc6;

.field public final c:Lnc6;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Lch3;->b:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lh97;->a:Lh97;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "FirebaseSessions"

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Dependency "

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " already added."

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v2, Lah3;

    .line 37
    .line 38
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v4}, Lah3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Dependency to "

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " added."

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnc6;

    .line 5
    .line 6
    const-class v1, Lak0;

    .line 7
    .line 8
    const-class v2, Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lnc6;

    .line 14
    .line 15
    new-instance v0, Lnc6;

    .line 16
    .line 17
    const-class v1, Lht0;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lnc6;

    .line 23
    .line 24
    new-instance v0, Lnc6;

    .line 25
    .line 26
    const-class v1, Lku4;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lnc6;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 6

    .line 1
    const-class v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 2
    .line 3
    invoke-static {v0}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fire-cls"

    .line 8
    .line 9
    iput-object v1, v0, Ltn1;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 12
    .line 13
    invoke-static {v2}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ltn1;->a(Lji2;)V

    .line 18
    .line 19
    .line 20
    const-class v2, Lqg3;

    .line 21
    .line 22
    invoke-static {v2}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ltn1;->a(Lji2;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lji2;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lnc6;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-direct {v2, v3, v4, v5}, Lji2;-><init>(Lnc6;II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ltn1;->a(Lji2;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lji2;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lnc6;

    .line 44
    .line 45
    invoke-direct {v2, v3, v4, v5}, Lji2;-><init>(Lnc6;II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ltn1;->a(Lji2;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lji2;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lnc6;

    .line 54
    .line 55
    invoke-direct {v2, v3, v4, v5}, Lji2;-><init>(Lnc6;II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ltn1;->a(Lji2;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lji2;

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    const-class v4, Laz1;

    .line 65
    .line 66
    invoke-direct {v2, v5, v3, v4}, Lji2;-><init>(IILjava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ltn1;->a(Lji2;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lji2;

    .line 73
    .line 74
    const-class v4, Lab;

    .line 75
    .line 76
    invoke-direct {v2, v5, v3, v4}, Lji2;-><init>(IILjava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ltn1;->a(Lji2;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lji2;

    .line 83
    .line 84
    const-class v4, Lvg3;

    .line 85
    .line 86
    invoke-direct {v2, v5, v3, v4}, Lji2;-><init>(IILjava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ltn1;->a(Lji2;)V

    .line 90
    .line 91
    .line 92
    new-instance v2, Lsn1;

    .line 93
    .line 94
    invoke-direct {v2, p0, v3}, Lsn1;-><init>(Ljava/lang/Object;I)V

    .line 95
    .line 96
    .line 97
    iput-object v2, v0, Ltn1;->f:Lmo1;

    .line 98
    .line 99
    invoke-virtual {v0}, Ltn1;->c()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ltn1;->b()Lun1;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string v0, "20.0.6"

    .line 107
    .line 108
    invoke-static {v1, v0}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    filled-new-array {p0, v0}, [Lun1;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0
.end method
