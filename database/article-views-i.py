import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    
    # Find rows where author viewed their own article
    df = views[views['author_id'] == views['viewer_id']]
    
    # Select unique author ids
    df = df[['author_id']].drop_duplicates()
    
    # Rename column to id
    df = df.rename(columns={'author_id': 'id'})
    
    # Sort values
    df = df.sort_values(by='id')
    
    return df