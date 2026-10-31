.class final Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Enrollment"
.end annotation


# instance fields
.field final code:Ljava/lang/String;

.field final dek:[B

.field final id:Ljava/lang/String;

.field final recovery:[B

.field final user:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;[B[BLjava/lang/String;)V
    .locals 0

    .line 1326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    .line 1328
    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    .line 1329
    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->dek:[B

    .line 1330
    iput-object p4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    .line 1331
    iput-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->code:Ljava/lang/String;

    .line 1332
    return-void
.end method
