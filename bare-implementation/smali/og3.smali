.class public final synthetic Log3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lga6;


# instance fields
.field public final synthetic a:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Log3;->a:Lcom/google/firebase/FirebaseApp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lr94;

    .line 2
    .line 3
    iget-object p0, p0, Log3;->a:Lcom/google/firebase/FirebaseApp;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lr94;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
