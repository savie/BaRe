.class public abstract Lli8;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lli8;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    sget-object v1, Ln45;->b:Ljava/util/HashMap;

    .line 9
    .line 10
    const-string v1, "ML-KEM-512"

    .line 11
    .line 12
    sget-object v2, Lo45;->c:Lo45;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v1, "ML-KEM-768"

    .line 18
    .line 19
    sget-object v2, Lo45;->d:Lo45;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v1, "ML-KEM-1024"

    .line 25
    .line 26
    sget-object v2, Lo45;->e:Lo45;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method
