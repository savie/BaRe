.class public final Llz5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqz5;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lwz5;


# direct methods
.method public constructor <init>(Lwz5;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llz5;->b:Lwz5;

    .line 5
    .line 6
    iput-boolean p2, p0, Llz5;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 8

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "ok"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Llz5;->b:Lwz5;

    .line 16
    .line 17
    iget-object v3, v2, Lwz5;->y:Lu00;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    sget-object p1, Lrz5;->e:Lrz5;

    .line 23
    .line 24
    iput-object p1, v2, Lwz5;->h:Lrz5;

    .line 25
    .line 26
    iput v4, v2, Lwz5;->C:I

    .line 27
    .line 28
    iget-boolean p0, p0, Llz5;->a:Z

    .line 29
    .line 30
    invoke-virtual {v2, p0}, Lwz5;->i(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    iput-object p0, v2, Lwz5;->q:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v2, Lwz5;->r:Z

    .line 39
    .line 40
    iget-object v5, v2, Lwz5;->a:Lwj6;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object v6, Lvs1;->c:Lm61;

    .line 46
    .line 47
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v5, v6, v7}, Lwj6;->p(Lm61;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-string v5, "d"

    .line 53
    .line 54
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/String;

    .line 59
    .line 60
    const-string v5, " ("

    .line 61
    .line 62
    const-string v6, ")"

    .line 63
    .line 64
    const-string v7, "Authentication failed: "

    .line 65
    .line 66
    invoke-static {v7, v0, v5, p1, v6}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-array v4, v4, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v3, p1, p0, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, v2, Lwz5;->g:Lvr1;

    .line 76
    .line 77
    const/4 p1, 0x2

    .line 78
    invoke-virtual {p0, p1}, Lvr1;->c(I)V

    .line 79
    .line 80
    .line 81
    const-string p0, "invalid_token"

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_1

    .line 88
    .line 89
    iget p0, v2, Lwz5;->C:I

    .line 90
    .line 91
    add-int/2addr p0, v1

    .line 92
    iput p0, v2, Lwz5;->C:I

    .line 93
    .line 94
    int-to-long p0, p0

    .line 95
    const-wide/16 v0, 0x3

    .line 96
    .line 97
    cmp-long p0, p0, v0

    .line 98
    .line 99
    if-ltz p0, :cond_1

    .line 100
    .line 101
    iget-object p0, v2, Lwz5;->z:Lln6;

    .line 102
    .line 103
    iget-wide v0, p0, Lln6;->d:J

    .line 104
    .line 105
    iput-wide v0, p0, Lln6;->i:J

    .line 106
    .line 107
    const-string p0, "Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/."

    .line 108
    .line 109
    invoke-virtual {v3, p0}, Lu00;->j(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    return-void
.end method
