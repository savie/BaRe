.class final Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Restored"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final uid:Ljava/lang/String;

.field final user:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    .line 1026
    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->id:Ljava/lang/String;

    .line 1027
    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    .line 1028
    return-void
.end method
