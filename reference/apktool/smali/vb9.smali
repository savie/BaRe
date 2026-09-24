.class public final Lvb9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public volatile a:I

.field public final b:Ly89;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ly89;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ly89;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lvb9;->c:Z

    .line 15
    .line 16
    iput p1, p0, Lvb9;->a:I

    .line 17
    .line 18
    iput-object v1, p0, Lvb9;->b:Ly89;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/app/Application;

    .line 25
    .line 26
    invoke-static {p1}, Lck0;->b(Landroid/app/Application;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lck0;->e:Lck0;

    .line 30
    .line 31
    new-instance v0, Lrb9;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lrb9;-><init>(Lvb9;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lck0;->a(Lbk0;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
