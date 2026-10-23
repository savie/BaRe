.class public final Lpu0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lqu0;


# direct methods
.method public constructor <init>(Lqu0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpu0;->d:Lqu0;

    .line 5
    .line 6
    iput-object p2, p0, Lpu0;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lpu0;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lpu0;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lpu0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lpu0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lpu0;->d:Lqu0;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Lqu0;->a(Lqu0;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, v2, Lqu0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    iget-object p0, p0, Lpu0;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "."

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v2, p0}, Ljava/security/Provider;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v0}, Lqu0;->b(Lqu0;Ljava/security/Provider$Service;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method
