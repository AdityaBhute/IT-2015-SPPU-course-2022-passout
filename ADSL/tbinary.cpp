# include <iostream>
# include <cstdlib>

using namespace std;

class node
{
	public:

	        int info;
	
                node *left;

       	        node *right;
       	        
       	        int rbit;
       	        
       	        int lbit;
       	        
       	        
};

class BST
{
        public:
                node *a[20];
                int c;
 	        node *root;		
                BST()
                {
                     root = NULL;
                     c=0;
                }

            void insert(node *);           
            void display(node *, int);
            void insequence(node*);
};
void BST::insert(node *newnode)
{

	if(root==NULL)		
	{
		root=newnode;
		cout<<"\nNew node is added at root\n";
		return;
	}

	node *temp;
	temp = root;	
	
	while(temp!=NULL)
	{
		if(temp->info==newnode->info)		
		{
			cout<<"\nNode already exist\n";
			return;
		}
	
	
		if(newnode->info < temp->info)
		{
			if(temp->left==NULL)
			{
				temp->left = newnode;
				cout<<"\nNode is added to left of "<<temp->info<<endl;
				return;
			}
			temp=temp->left;
		}
		else
		{
			if(temp->right==NULL)
			{
				temp->right = newnode;
				cout<<"\nNode is added to right of "<<temp->info<<endl;
				return;
			}
			temp=temp->right;
		}		
	}
}

void BST::display(node *ptr, int level)
{

        int i;

        if (ptr != NULL)

        {

            display(ptr->right, level+1);

            cout<<endl;

            if (ptr == root)

                cout<<"Root->:  ";

            else

            {

                for (int i = 0;i < level;i++)

                    cout<<"       ";

    	    }

            cout<<ptr->info;

            display(ptr->left, level+1);

        }
}

void BST::insequence(node *temp)
{
 
    
    if(temp != NULL)
    {
        insequence(temp->left);
        if(temp->left == NULL)
        {
           temp->lbit=0;
        }
        else
        {
           temp->lbit=1;
        }
       if(temp->right == NULL)
        {
           temp->rbit=0;
        }
        else
        {
           temp->rbit=1;
        }
        a[c]=temp;
        cout<<"\n"<<a[c]->info;    
        c = c+1;
        insequence(temp->right);
    }
  
}  
int main()
{

        int choice, num;

        BST bst;

        node *temp;

        while (1)

        {



            cout<<"\nOperations on BST"<<endl;

            cout<<"-----------------"<<endl;

            cout<<"1.Insert new Node :  "<<endl;
                       
            cout<<"2.Display"<<endl;
            
            cout<<"3.Inline sequence Display"<<endl;

            cout<<"4."<<endl;
            
            cout<<"5.Quit"<<endl;

            cout<<"Enter your choice : ";

            cin>>choice;

            switch(choice)

            {

            case 1:

                temp = new node;

                cout<<"Enter the number to be inserted : ";

    	        cin>>temp->info;

                bst.insert(temp);
                
	        break;

                
            case 2:

                cout<<"Display BST:"<<endl;

                bst.display(bst.root,1);

                cout<<endl;

                break;

            case 3:
               
                cout<<"Inorder Display";
                
                bst.insequence(bst.root);
                
                break;
     
            case 4:
             
                cout<<"Array access";

                for(int i=0;i<bst.c;i++)
                {
			cout<<""<<bst.a[i]->info;
                }      
                
                break;

            case 5:

                exit(1);

            default:

                cout<<"Wrong choice"<<endl;

            }

        }

    }
